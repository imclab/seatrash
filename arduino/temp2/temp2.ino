    #define BANDGAPREF 14   // special pin so we can measure the bandgap

    int loopDelay        = 20;   // ms between loops
    int pinReadDelay     = 10;   // ms delay to stabilize reading on Arduino ADC when switching pin-to-pin?
    int muxAddPins[]     = { 5, 6, 7 };  // digital pins on Arduino that control all the muxes

    int analogReadWithDelays(int pin)
    {
      analogRead(pin);
      delay(pinReadDelay);
      int val = analogRead(pin);
      delay(pinReadDelay);
      return val;
    }

    float volt2temp(float volt)
    {
      float tempC = (volt - 0.5) * 100; //Celcius
      return (tempC * 9. / 5.) + 32.;  //returns Fahrenheit
    }


    void setup()
    {
      for (int ii = 0; ii < 3; ii++) {  //set multiplexer address switch pins to OUTPUT
        pinMode(muxAddPins[ii], OUTPUT);
      }
      Serial.begin(9600);  //Start the serial connection with the computer
      delay(2000);
    }


    void loop()   
    {
      int sensorPin = 0;
      int addressbit[] = { 1,2,4 };  // for accounting/pin math
      int refReading, reading;
      float supplyVoltage, voltage, Uvoltage;
     
      Serial.print(loopDelay);Serial.print(" || "); //start line
     
      refReading = analogReadWithDelays(BANDGAPREF); //use this reference for all sensor reads

      // run through pin addresses on the mux (ie, 001, 010, 011 for the three on right now)
      for (int mpi = 0; mpi < 3; mpi++ ) {
        for (int pi = 3-1; pi>=0; pi--) { // set each address bit
          if ( mpi & addressbit[pi] ) { digitalWrite(muxAddPins[pi], HIGH); } else { digitalWrite(muxAddPins[pi], LOW); }
        }
        // Now read the voltage off the sensor at that mux address
        //   ...calculate our power supply voltage from the known 1.05 volt reading
        supplyVoltage = (1.05 * 1024) / refReading;
        //   ...get the voltage reading from the temperature sensor, convert that to voltage
        reading  = analogReadWithDelays(sensorPin);
        voltage  = reading * supplyVoltage / 1024;     
        Uvoltage = reading * 5.0 / 1024;  // also, look at "uncalibrated" version
       
        Serial.print(volt2temp(voltage),3); Serial.print("  ");
        Serial.print(volt2temp(Uvoltage),3);Serial.print(" | ");
      }
      Serial.println(); //end the line
     
      delay(loopDelay); //WHY DO I NEED THIS TO BE SO LONG???!!!

      loopDelay = loopDelay + 20; // in each iteration, add some time to the loop
    }

