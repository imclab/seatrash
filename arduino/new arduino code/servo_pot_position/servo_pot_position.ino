/* YourDuinoStarter Example: Servo Pot Position
 - Moves a Servomotor through a range of positions in response 
   to the position of a Potentiometer attached to an Analog input.
 - SEE the comments after "//" on each line below
 - CONNECTIONS:
 - Potentiometer connected to +5, Gnd, YourDuino Analog input 0
 - Servo connector plugged on YourDuinoRobo1 port 9
   - If separate wires:
   - Servo Black to Gnd.
   - Servo Red or Orange (Center wire) to +5V
   - Servo White or Yellow to Signal (Pin 9)
 - V1.00 09/17/12
 Questions: terry@yourduino.com */

/*-----( Import needed libraries )-----*/
#include <Servo.h>  // Comes with Arduino IDE

/*-----( Declare Constants and Pin Numbers )-----*/
#define ServoPIN  9   // Can be changed 3,5,6,9,10,11
#define PotPin    A0  // Analog input 0 (zero)

#define ServoMIN  20  // Don't go to very end of servo travel
#define ServoMAX  160 // which may not be all the way from 0 to 180. 

/*-----( Declare objects )-----*/
Servo myservo;  // create servo object to control a servo 
// a maximum of eight servo objects can be created

/*-----( Declare Variables )-----*/
int PotValue;    // User moves the pot.
int Position;    // variable to store the servo position 


void setup()   /****** SETUP: RUNS ONCE ******/
{
  myservo.attach(ServoPIN);  // attaches the servo on pin 9 to the servo object 
}//--(end setup )---


void loop()   /****** LOOP: RUNS CONSTANTLY ******/
{
  PotValue  = analogRead(PotPin);  // Get the value as user moves pot
// scale it to use it with the servo (value between MIN and MAX)                  
  Position  = map(PotValue, 0, 1023, ServoMIN , ServoMAX); 
  myservo.write(Position);         // tell servo to go to position
  delay(25);                      // wait for the servo to reach the position 

}//--(end main loop )---

/*-----( Declare User-written Functions )-----*/
//none

//*********( THE END )***********
