/* YourDuinoStarter Example: BLINK
 - WHAT IT DOES: Blinks the built-in LED ON and OFF
 - SEE the comments after "//" on each line below
 - CONNECTIONS:
 - Built-In LED and resistor connected to pin 13
 -
 - V1.01 02/11/13
 Questions: terry@yourduino.com */

/*-----( Import needed libraries )-----*/
//none yet
/*-----( Declare Constants and Pin Numbers )-----*/
#define led 13  // define name of pin number  NOTE: NO ";" on #define !
/*-----( Declare objects )-----*/
//none yet
/*-----( Declare Variables )-----*/
//none yet


void setup()   /****** SETUP: RUNS ONCE ******/
{
  pinMode(led, OUTPUT);  // initialize the digital pin as an output. 
}//--(end setup )---


void loop()   /****** LOOP: RUNS CONSTANTLY ******/
{
  digitalWrite(led, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);               // wait for a second, watching the bright LED
  digitalWrite(led, LOW);    // turn the LED off by making the voltage LOW
  delay(1000);               // wait for a second, watch the Dark

}//--(end main loop )---

/*-----( Declare User-written Functions )-----*/
//None yet
//*********( THE END )***********



