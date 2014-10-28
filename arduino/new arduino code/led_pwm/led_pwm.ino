/* YourDuinoStarter_LED_PWM_Dimmer
 - Reads voltage on Analog Pin 0 and displays value
 - Converts integer value to volts and displays it
 - Maps analog voltage to PWM value to control LED
 - SEE the comments after "//" on each line below
 - CONNECTIONS:
 - Potentiometer from +5 to Ground, center to pin A0
 - LED and 220 ohm resistor to pin 3 and ground
 - V1.03 02/11/13
 Questions: terry@yourduino.com */

/*-----( Import needed libraries )-----*/
//none
/*-----( Declare Constants and Pin Numbers )-----*/
#define analogPin  A0  // In separate group of pins
#define ledPin     3  // The onboard LED
/*-----( Declare objects )-----*/
//none
/*-----( Declare Variables )-----*/
int    analogIntValue;    // Holds the integer 10 bit value read in
float  analogVoltsValue;  // Value converted to 0..5V 
int    mappedPWM_Value;   // To control LED


void setup()   /****** SETUP: RUNS ONCE ******/
{
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);   //Start sending to "Serial Monitor"
  Serial.println("YourDuinoStarter: Pot control LED PWM Dimmer.");
}//--(end setup )---


void loop()   /****** LOOP: RUNS CONSTANTLY ******/
{
  
/*---( Read Sensors )------*/  
  analogIntValue = analogRead(analogPin); //Read value
  
  Serial.print("10 Bit Integer VALUE = ");
  Serial.print(analogIntValue,DEC); // Print value 
  analogVoltsValue = analogIntValue * (5.0 / 1024.0);
  Serial.print("    0 to 5V VALUE = ");
  Serial.print(analogVoltsValue, 3); // Print value     

/*---( Make Decisions )------*/   
/*--( Maps analog voltage to PWM value to control LED )--*/

  mappedPWM_Value = map( analogIntValue, 0, 1023, 0, 255);
  Serial.print("   PWM Value = ");
  Serial.println(mappedPWM_Value); // Print value    
  
/*---( Take Actions )------*/     
  analogWrite(ledPin, mappedPWM_Value);
  
  delay(2000);     // Wait 2 seconds
  
}//--(end main loop )---

/*-----( Declare User-written Functions )-----*/
//none
//*********( THE END )***********


