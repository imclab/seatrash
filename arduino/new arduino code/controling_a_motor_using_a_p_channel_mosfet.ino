void setup()
{

 pinMode(9, OUTPUT);
 Serial.begin(9600);
}

void loop()
{
  Serial.println(analogRead(A1));
  if(analogRead(A1) == 1023)
  {
 digitalWrite(9, LOW);
  }
  else
  {
digitalWrite(9,HIGH);
  }
  delay(500);
}

