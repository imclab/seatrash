/* YourDuinoStarter Example: Automation Example:
 This shows a way of organizing more complex automation software.
 It works the same as "Lighting Control Example"
 - Reads voltage on Analog Pin 0 and may display value
 - Reads voltage on Analog Pin 1 and may display value
 - Compares values and turns on light if it's darker than setting
 - SEE the comments after "//" on each line below
 - CONNECTIONS:
 - Potentiometer from +5 to Ground, center to pin A0
 - Photoresistor from +5V to pin A1, 10K from A1 to Gnd.
 - Relay may be connected to Pin 13 (or other if "ledPin" is changed.)
 - V1.04 02/11/13
 Questions: terry@yourduino.com */

/*-----( Import needed libraries )-----*/
//none
/*-----( Declare Constants and Pin Numbers )-----*/
#define potPin    A0  // In separate group of pins
#define photoPin  A1  // In separate group of pins
#define ledPin    13  // The onboard LED
#define RelayPin  3  // Control an active-low relay
/*-----( Declare objects )-----*/
//none
/*-----( Declare Variables )-----*/
int      potValue;    // Hold the values read in
int      photoValue;
boolean  lightsOn;         // Should Lights should be turned on? 
boolean  Debug_ShowValues;  // Should values be sent to Serial Monitor? 
// Boolean Values can be only "true" or "false"

void setup()   /****** SETUP: RUNS ONCE ******/
{
  pinMode(ledPin, OUTPUT);
  pinMode(RelayPin, OUTPUT);  
  lightsOn         = false; // Start with Lights off
  Debug_ShowValues = false; // Do not show. Change this to test.
  if (Debug_ShowValues == true)
  {  
    Serial.begin(9600);     //Start sending to "Serial Monitor"
    Serial.println("YourDuinoStarter Example: Automation Example.");
  }
}//--(end setup )---


void loop()   /****** LOOP: RUNS CONSTANTLY ******/
{
  ReadSensors();  // Each of these is a function defined below
  MakeDecisions();
  TakeActions();

  delay(1000);     // Wait 1 second
}//--(end main loop )---

/*-----( Declare User-written Functions )-----*/

void ReadSensors()
{
  potValue   = analogRead(potPin); //Read value
  photoValue = analogRead(photoPin); //Read value  
  if (Debug_ShowValues == true)
  {
    Serial.print("POT VALUE = ");
    Serial.print(potValue,DEC); // Print value 
    Serial.print("  PHOTORESISTOR VALUE = ");
    Serial.println(photoValue,DEC); // Print value
  }
}  

/*---------------------------*/
void MakeDecisions()
{
  if (photoValue < potValue)
  {    
    lightsOn = true;   
  }
  else
  {    
    lightsOn = false; 
  }

} 

/*---------------------------*/
void TakeActions()
{
  if (lightsOn == true)  // "==" means "compare Equal" 
  { 
    digitalWrite(ledPin, HIGH); 
    digitalWrite(RelayPin, LOW);  // This relay is Active LOW!     
  }
  else
  { 
    digitalWrite(ledPin, LOW);  
    digitalWrite(RelayPin, HIGH);      
  }
} 
//*********( THE END )***********


