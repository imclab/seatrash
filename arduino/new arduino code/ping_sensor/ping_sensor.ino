/* Ping))) Sensor

 This sketch reads a PING))) ultrasonic rangefinder and returns the
 distance to the closest object in range. To do this, it sends a pulse
 to the sensor to initiate a reading, then listens for a pulse 
 to return. The length of the returning pulse is proportional to 
 the distance of the object from the sensor.
 
 The circuit:
     * +V connection of the PING))) attached to +5V
     * GND connection of the PING))) attached to ground
     * SIG connection of the PING))) attached to digital pin 2
 
 http://www.arduino.cc/en/Tutorial/Ping
 
 created 3 Nov 2008
 by David A. Mellis
 modified 30 Jun 2009
 by Tom Igoe
 modified Nov 2010
 by Joe Saavedra
 
 */

const int pingPin = 2; 1
long duration, distanceInches, distanceCm; 2

void setup() 
{
  Serial.begin(9600); 3
}

void loop() 
{
  pinMode(pingPin, OUTPUT); 4
  digitalWrite(pingPin, LOW);
  delayMicroseconds(2);
  digitalWrite(pingPin, HIGH);
  delayMicroseconds(5);
  digitalWrite(pingPin, LOW);

  pinMode(pingPin, INPUT); 5
  duration = pulseIn(pingPin, HIGH);

  distanceInches = microsecondsToInches(duration); 6
  distanceCm = microsecondsToCentimeters(duration);
  Serial.print(distanceInches); 7
  Serial.print("in, ");
  Serial.print(distanceCm);
  Serial.print("cm");
  Serial.println();

  delay(100);
}

long microsecondsToInches(long microseconds) 
{
  return microseconds / 74 / 2; 8
}

long microsecondsToCentimeters(long microseconds) 
{
  return microseconds / 29 / 2; 9
}
