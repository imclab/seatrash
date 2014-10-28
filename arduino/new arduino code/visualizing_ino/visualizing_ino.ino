/*
luckylarry.co.uk
3D Scan Visualisation for Sharp GP2Y0A02 IR range finder
Sends sensor readings for every degree moved by the servo
values sent to serial port to be picked up by Processing
*/
#include <Servo.h>        // include the standard servo library
Servo leftRightServo;         // set a variable to map the servo
Servo upDownServo;
int leftRightPos = 0;         // set a variable to store the servo position
int upDownPos = 0;
const int numReadings = 10;   // set a variable for the number of readings to take
int index = 0;                // the index of the current reading
float total = 0;              // the total of all readings must be a float to allow totaling of float values
int average = 0;              // the average
int IRpin = 1;                // analog pin for reading the IR sensor
 
/* setup the pins, servo and serial port */
void setup() {
  leftRightServo.attach(9);
  upDownServo.attach(10);
  // initialize the serial port:
  Serial.begin(9600);
} 
 
/* begin rotating the servo and getting sensor values */
void loop() {
 for(leftRightPos = 0; leftRightPos < 180; leftRightPos++)
  {
    leftRightServo.write(leftRightPos);             
 
  for(upDownPos = 60; upDownPos < 120; upDownPos++)
  {
    upDownServo.write(upDownPos);  
 
      for (index = 0; index<=numReadings;index++) {            // take x number of readings from the sensor and average them
        float volts = analogRead(IRpin)*0.0048828125;   // value from sensor * (5/1024) - if running 3.3.volts then change 5 to 3.3
        float distance = 65*pow(volts, -1.10);          // worked out from graph 65 = theretical distance / (1/Volts)S - luckylarry.co.uk
        total = total + distance;                              // update total
        delayMicroseconds(20);
      }
    average = (int) total/numReadings;                               // create average reading
        if (average < 20) {
         average = 20;
        }
        if (average > 150) {
         average = 150;
        }
        //average = 0 - average;
    if (index >= numReadings)  {                               // reset the counts when at the last item of the array
      index = 0;
      total = 0;
    }       
 
Serial.print("Y");
Serial.print(upDownPos-60);
Serial.print("X");
Serial.print(leftRightPos);
Serial.print("Z");
Serial.println(average);
 
  }
    upDownServo.write(60);
  }
 
    leftRightServo.write(0);              
 
}
