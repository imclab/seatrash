#include <Servo.h>                      // Servo header file is needed to control the servo motor.
Servo servo1;                           // Create servo object to allow us to control the servo motor.
                                        
float tempC;                            // create variable to store the temperature in.
int tempPin = 0;                        // Attach vout to analog pin 0.
int led = 13;                           // attach led to pin 13.
int fan1 = 3;                           // attach base of transistor to digital pin 3.
int pos = 0;                            // create variable to store the position of the servo motor.

void setup()                            // Will execute once at the start of the code.
{
  Serial.begin(9600);                   // opens serial port, sets data rate to 9600 bps
  pinMode (led, OUTPUT);                // sets the led pin 13 up as an output.
  pinMode (fan1, OUTPUT);               // sets the fan1 pin 3 up as an output.
  servo1.attach(5);                     // attaches the servo motor to digital pin 5.
}

void loop()                             // code here will continue to replay nutil powered off.
{
  tempC = analogRead(tempPin);          // read the analog value from the lm35 sensor.
  tempC = (5.0 * tempC * 100.0)/1024.0; // convert the analog input to temperature in centigrade.
  Serial.print((byte)tempC);            // send the data to the computer.
  Serial.print(" ");
    if (tempC > 76)                     // creates bool expression for analyzation. if it evaluates to true,
    {                                   // the body of the if statement will execute.
      pos = 180;                        // sets pos equal to 180.
      digitalWrite (led, HIGH);         // turns on led.
      digitalWrite (fan1, HIGH);        // turns on fan1.
      servo1.write(pos);                // turns servo to 180 degrees.
    }
    else                                // if the if equation evaluates to false the else statement will execute.
    {
      pos = 90;                         // sets pos equal to 90.
      digitalWrite (led, LOW);          // turns off led.
      digitalWrite (fan1, LOW);         // turns off fan1.
      servo1.write(pos);                // turns servo to 90 degrees.
    }
  delay(3000);                          // wait 3 seconds before redoing the loop.
}


