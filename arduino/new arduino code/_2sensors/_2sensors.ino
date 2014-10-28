/* YourDuinoStarter Example: 2 Analog Values
 - Reads voltage on Analog Pin 0 and displays value
 - Reads voltage on Analog Pin 1 and displays value 
 - If light level is low enough, turns LED on.
 - SEE the comments after "//" on each line below
 - CONNECTIONS:
 - Potentiometer from +5 to Ground, center to pin A0
 - Photoresistor from +5V to pin A1, 10K from A1 to Gnd.
 - V1.02 02/11/13
 Questions: terry@yourduino.com */

/*-----( Import needed libraries )-----*/
//none
/*-----( Declare Constants and Pin Numbers )-----*/
#define potPin    A0  // In separate group of pins
#define photoPin  A1  // In separate group of pins
#define ledPin    13  // The onboard LED
/*-----( Declare objects )-----*/
//none
/*-----( Declare Variables )-----*/
int  potValue;  // Hold the values read in
int  photoValue;

void setup()   /****** SETUP: RUNS ONCE ******/
{
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);   //Start sending to "Serial Monitor"
  Serial.println("YourDuinoStarter Example: Show Analog Value.");
}//--(end setup )---


void loop()   /****** LOOP: RUNS CONSTANTLY ******/
{
  potValue   = analogRead(potPin); //Read value
  photoValue = analogRead(photoPin); //Read value  
  Serial.print("POT VALUE = ");
  Serial.print(potValue,DEC); // Print value 
  Serial.print("  PHOTORESISTOR VALUE = ");
  Serial.println(photoValue,DEC); // Print value   
  
/*-( Test the voltage. If it's < the light level set by the pot, turn on the Light )-*/    
  if ( photoValue < potValue ) 
  {
    digitalWrite(ledPin, HIGH);
    Serial.println("Getting darker: Light turned ON");
  } 
  else
  {
    digitalWrite(ledPin, LOW);    
    Serial.println("Getting Lighter: Light turned OFF");    
  }  
  
  delay(4000);     // Wait 4 seconds
}//--(end main loop )---

/*-----( Declare User-written Functions )-----*/
//none
//*********( THE END )***********

