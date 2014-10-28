/*
LUCKYLARRY.CO.UK - 2 3pin PIR sensors to track basic motion.
 
We have 1 sensor for left, 1 for right.
 
The left sensor is triggered, the LED for the left comes on and the servo moves until no motion is detected.
The same happens if the right sensor is triggered.
 
If both sensors detect motion then its likely the object may be between the 2 but given the field of detection
its not going to be precice. Enjoy!
 
*/
 
#include                                                 // Include servo library, you can get it from http://www.arduino.cc/playground/ComponentLib/Servo
Servo myservo;                                                    // Create a servo object
int pos = 0;                                                      // Variable to store the servo position in degrees
int pinPIRleft = 4;                                               // left infrared sensor, digital pin 4
int pinLEDleft = 8;	                                          // left LED, digital pin 8
int pinPIRright = 2;                                              // right sensor, digital pin 2
int pinLEDright = 10;                                             // right LED, digital pin 10
 
void setup() {
  pinMode(pinLEDleft, OUTPUT);                                    // set LEDs as outputs
  pinMode(pinLEDright, OUTPUT);
  pinMode(pinPIRleft, INPUT);                                     // set sensors as inputs
  pinMode(pinPIRright, INPUT);
  myservo.attach(9);                                              // set the servo to digital pin 9
}
 
void loop() {
 
  if (digitalRead(pinPIRleft) == LOW) {                           // if left detects motion
    digitalWrite(pinLEDleft, HIGH);                               // turn on LED
    if ((pos < 180) && (digitalRead(pinPIRright) == HIGH)) {      // if less than 180 degrees and the right sensor is off then move servo
      pos += 1;                                                   // increment servo degrees by +1
      myservo.write(pos);                                         // write the position to the servo
      delay(15);
    }
  } else {
    digitalWrite(pinLEDleft, LOW);                                // otherwise turn off LED and no servo movement
  }
 
  if (digitalRead(pinPIRright) == LOW) {
    digitalWrite(pinLEDright, HIGH);
    if ((pos >= 1) && (digitalRead(pinPIRleft) == HIGH)) {
      pos -= 1;
      myservo.write(pos);
      delay(15);
    }
  } else {
    digitalWrite(pinLEDright, LOW);
  }
 
  if ((digitalRead(pinPIRleft) == LOW) && (digitalRead(pinPIRright) == LOW)) {
    // do something here if both sensors detect movement.
  }
}
