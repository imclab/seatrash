//**TrackFan**//
//Code and concept by ePums
//tempRead code by Dave Eaton and SensorJunkie

#include <Servo.h>
#include <i2cmaster.h>

Servo mrservo;

int j = 0;
int pos;
int posVals[]= {
  0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120
};
double tempVals[12];
int hotPos;

void tempRead(){

  //Define function for reading the temperature from the IR Sensor.
  int dev = 0x5A<<1;
  int data_low = 0;
  int data_high = 0;
  int pec = 0;
  i2c_start_wait(dev+I2C_WRITE);
  i2c_write(0x07);


  i2c_rep_start(dev+I2C_READ);
  data_low = i2c_readAck(); //Read 1 byte and then send ack
  data_high = i2c_readAck(); //Read 1 byte and then send ack
  pec = i2c_readNak();
  i2c_stop();

  //This converts high and low bytes together and processes temperature, MSB is a error bit and is ignored for temps
  double tempFactor = 0.02; // 0.02 degrees per LSB
  double tempData = 0x0000;
  int frac;

  // This masks off the error bit of the high byte, then moves it left 8 bits and adds the low byte.
  tempData = (double)(((data_high & 0x007F) << 8) + data_low);
  tempData = (tempData * tempFactor)-0.01;
  tempData = tempData - 273.15;

  tempVals[j] = tempData;
  j+=1;
}


void servoSweep(){
  Serial.println("servoSweep initialize!");
  j = 0;
  pos = 0;
  //reset pos and temp indices
  delay(500);
  Serial.println("Positions:");
  //return servo to initial position
  for (pos = 0; pos < 130; pos +=10)
  {
    mrservo.write(pos);
    //move servo 10 degrees
    delay(200);
    //allow sensor to settle
    tempRead();
    Serial.println(pos);
    //read and store temp data
    delay(300);
  }
}

void findHot(){
  Serial.println ("findHot started!");
  //find highest temperature, move servo to corresponding position
  int i = 0;
  //local search index
  int q = 0;
  double hotTemp = tempVals[0];
  //the position data associated with the highest temperature in a given sweep
  for (i=0; i < 13; i+=1) {
    if (tempVals[i] >= hotTemp) {
      hotTemp =tempVals[i];
      Serial.print("#" + String(i) + " hot Temp: ");
      Serial.println(hotTemp);
      delay(50);
      q = i;
      //retrieve index for highest temp value in tempVals array
    }
  }
  hotPos = posVals[q];
  Serial.println("hotPos: ");
  Serial.print(hotPos);

  //retrieve the corresponding pos value from posVals index
  if (mrservo.attached()) {
    Serial.println("this is reading output right now");
  }
  delay(1000);
  mrservo.detach();
  mrservo.attach(3);
  mrservo.write(hotPos);
  delay(1000);
  //move the servo
  Serial.println("Returning to hotPos");
 
  
  /////////**DELAY BETWEEN SCANS**//////////////// 
  delay(10000);

  i=0;
}


void setup(){
  Serial.begin(9600);
  i2c_init();
  PORTC = (1 << PORTC4) | (1 << PORTC5);
}

void loop(){
  mrservo.attach(3);
  delay(1000);
  mrservo.write(0);
  i2c_init();
  servoSweep();
  Serial.println("Temperatures!");
  for (int n=0; n < 13; n += 1) {
    Serial.println(tempVals[n]);
    delay(50);
  }
  findHot();

  mrservo.detach();
  delay(2000);
}
