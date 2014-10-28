/* Read 3 Ping Sensors
   Based on code by
   David A. Mellis and Tom Igoe
   Joe Saavedra, 2010
   http://BotBook.com
 */

const int leftPing = 2;
const int centerPing = 3;
const int rightPing = 4;

void setup() 
{
  Serial.begin(9600); // bit per second
}

void loop()
{
  Serial.print("Left: ");
  getDistance(leftPing);
  Serial.print("Center: ");
  Serial.println(getDistance(centerPing)); 
  Serial.print("Right: ");
  Serial.println(getDistance(rightPing)); 
  Serial.println();
  
  delay(250); // ms
}

int getDistance(int pingPin)
{
  long duration, inches, cm;

  pinMode(pingPin, OUTPUT);
  digitalWrite(pingPin, LOW);
  delayMicroseconds(2);
  digitalWrite(pingPin, HIGH);
  delayMicroseconds(5);
  digitalWrite(pingPin, LOW);

  pinMode(pingPin, INPUT);
  duration = pulseIn(pingPin, HIGH);

  inches = microsecondsToInches(duration);
  cm = microsecondsToCentimeters(duration);
  
  //return(inches);
  return(cm);
}

long microsecondsToInches(long microseconds)
{
  return microseconds / 74 / 2;
}

long microsecondsToCentimeters(long microseconds)
{
  return microseconds / 29 / 2;
}
