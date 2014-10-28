/* YourDuino PWM Power Example
 "analogWrite" outputs a Pulse Width Modulated signal
 terry@yourduino.com
 Fades an LED or Lamp up and down
 NOTE: analogWrite values are from 0..255
 
 */

/*-----( Import needed libraries )-----*/
/*-----( Declare Constants )-----*/
#define ledPin  9    // LED connected to digital pin 9
/*-----( Declare objects )-----*/
/*-----( Declare Variables )-----*/
int fadeValue;  //Value to be sent to PWM


void setup()   /****** SETUP: RUNS ONCE ******/
{
  // (Not Used)

}//--(end setup )---


void loop()   /****** LOOP: RUNS CONSTANTLY ******/
{
  // fade up min to max 
  for(fadeValue = 0 ; fadeValue <= 255; fadeValue +=5)
  { 
    analogWrite(ledPin, fadeValue);  
    delay(50);                            
  } // End Fade Up

  delay(2000); // Hold 2 seconds at max brightness

  // fade out max to min
  for(fadeValue = 255 ; fadeValue >= 0; fadeValue -=5) 
  { 
    analogWrite(ledPin, fadeValue);            
    delay(50);                            
  } 
  delay(2000); // Hold 2 seconds at off

}//--(end main loop )---

/*-----( Declare User-written Functions )-----*/
//None

//*********( THE END )***********
