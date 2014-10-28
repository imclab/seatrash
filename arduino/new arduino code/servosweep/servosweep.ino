/* YourDuinoStarter Example: Servo Sweep
 - Moves a Servomotor through a range of positions
 - SEE the comments after "//" on each line below
 - CONNECTIONS:
 - Servo connector plugged on YourDuinoRobo1 port 9
 - If separate wires:
  - Servo Black or Brown to Gnd.
  - Servo Red or Orange (Center wire) to +5V
  - Servo White or Yellow to Signal (Pin 9)
 - V1.02 02/11/13
 Questions: terry@yourduino.com */

/*-----( Import needed libraries )-----*/
#include <Servo.h>  // Comes with Arduino IDE

/*-----( Declare Constants and Pin Numbers )-----*/
#define ServoPIN  9  // Can be changed 3,5,6,9,10,11
#define ServoMIN  20 // Don't go to end of servo travel
#define ServoMAX  160 // which may be 0 to 180. 

/*-----( Declare objects )-----*/
Servo myservo;  // create servo object to control a servo 
// a maximum of eight servo objects can be created

/*-----( Declare Variables )-----*/
int pos = 0;    // variable to store the servo position 


void setup()   /****** SETUP: RUNS ONCE ******/
{
  myservo.attach(ServoPIN);  // attaches the servo on pin 9 to the servo object 

}//--(end setup )---


void loop()   /****** LOOP: RUNS CONSTANTLY ******/
{
  for(pos = ServoMIN; pos < ServoMAX; pos += 1)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(10);                       // waits 15ms for the servo to reach the position 
  } 
  delay(1000);
  for(pos = ServoMAX; pos>=ServoMIN; pos-=1)     // goes from 180 degrees to 0 degrees 
  {                                
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(10);                       // waits 15ms for the servo to reach the position 
  }
  delay(2500);

}//--(end main loop )---

/*-----( Declare User-written Functions )-----*/
//none

//*********( THE END )***********



