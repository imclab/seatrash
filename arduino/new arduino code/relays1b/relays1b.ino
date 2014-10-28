/* YourDuino Example: Relay Control 1.10
  Handles "Relay is active-low" to assure
  no relay activation from reset until
  application is ready.
   terry@yourduino.com */

/*-----( Import needed libraries )-----*/
/*-----( Declare Constants )-----*/
#define RELAY_ON 0
#define RELAY_OFF 1
/*-----( Declare objects )-----*/
/*-----( Declare Variables )-----*/
#define Relay_1  2  // Arduino Digital I/O pin number
#define Relay_2  3
#define Relay_3  4
#define Relay_4  5

void setup()   /****** SETUP: RUNS ONCE ******/
{
//-------( Initialize Pins so relays are inactive at reset)----
  digitalWrite(Relay_1, RELAY_OFF);
  digitalWrite(Relay_2, RELAY_OFF);
  digitalWrite(Relay_3, RELAY_OFF);
  digitalWrite(Relay_4, RELAY_OFF);  
  
//---( THEN set pins as outputs )----  
  pinMode(Relay_1, OUTPUT);   
  pinMode(Relay_2, OUTPUT);  
  pinMode(Relay_3, OUTPUT);  
  pinMode(Relay_4, OUTPUT);    
  delay(4000); //Check that all relays are inactive at Reset

}//--(end setup )---


void loop()   /****** LOOP: RUNS CONSTANTLY ******/
{
//---( Turn all 4 relays ON in sequence)---
  digitalWrite(Relay_1, RELAY_ON);// set the Relay ON
  delay(1000);              // wait for a second
  digitalWrite(Relay_2, RELAY_ON);// set the Relay ON
  delay(1000);              // wait for a second  
  digitalWrite(Relay_3, RELAY_ON);// set the Relay ON
  delay(1000);              // wait for a second
  digitalWrite(Relay_4, RELAY_ON);// set the Relay ON
  delay(4000);              // wait see all relays ON
  
//---( Turn all 4 relays OFF in sequence)---  
  digitalWrite(Relay_1, RELAY_OFF);// set the Relay OFF
  delay(1000);              // wait for a second
  digitalWrite(Relay_2, RELAY_OFF);// set the Relay OFF
  delay(1000);              // wait for a second  
  digitalWrite(Relay_3, RELAY_OFF);// set the Relay OFF
  delay(1000);              // wait for a second
  digitalWrite(Relay_4, RELAY_OFF);// set the Relay OFF
  delay(4000);              // wait see all relays OFF  
  

}//--(end main loop )---



//*********( THE END )***********

