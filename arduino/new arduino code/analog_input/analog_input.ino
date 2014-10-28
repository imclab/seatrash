/*
  Analog input, serial output
 
 Reads an analog input pin, prints the results to the serial monitor and
 modify the LED luminosity mapping the returned values from 0 to 255 (using PWM)
 
*/
 
 
int ledPin =  9;            // LED connected to digital pin 9
int sensorPin = 2;        // value read from the sensor
int outputValue = 0;        // value output to the PWM (analog out)
 
 
void setup() {
  Serial.begin(9600);
}
 
 void loop() {
 
   // read the analog input
   int analogValue = analogRead(sensorPin);
 
   // NOTE: you should modify following script in according with your project goals, resistors and used sensors.
 
 
   // Sensors return values from 0 until 1023 but I mapped them from 250 to 900 to get a better visual result.
   // The map() method will return us a value from 0 to 255, good PWM values to turn on my LED
   outputValue = map(analogValue, 250, 900, 0, 255);
 
 
   // Some sensors, when their value is near to zero, return a variable value between 2 and 3, creating a loop
   // that could generate bad visual effects. To avoid this issue I always turn off the LEd when sensor value is < 5
   if (outputValue<5)
     analogWrite(ledPin, 0);
    else
     analogWrite(ledPin, outputValue);
 
 
 
   // print the result to the serial monitor
   Serial.print(analogValue);
   Serial.print(" : ");
   Serial.print(outputValue);
   Serial.println("----");
 
 
 
   // wait 10 milliseconds for the analog-to-digital converter
   delay(10);
 }
