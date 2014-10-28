int pwmPin = 9;      // digital pin 9
int pwmVal = 10;

void setup()
{
  pinMode(pwmPin, OUTPUT);   // sets the pin as output
  Serial.begin(9600);
}

void loop()
{

  
  if(pwmVal < 255)
{
   //pwmVal += 10;
    pwmVal=min(pwmVal, 245); pwmVal += 10;
    analogWrite(pwmPin, pwmVal);
         //pwmVal += 10;
         Serial.print(pwmVal);  // Print red value
         Serial.print("\n");    // Print a tab
}
else
{
   pwmVal = 255;
      Serial.print('at max high');  // Print red value
         Serial.print("\n");    // Print a tab
}


  
  
  delay(1000);
}
