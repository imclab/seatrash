
/*
  Analog smoothing using a weighted average filter
 by Tom Igoe

 Based on notes by Limor Fried, at

 http://www.ladyada.net/learn/sensors/tmp36.html

 This example reads a TMP36 temperature sensor on Analog pin 1.  A0 is the
 TMP36's ground, and A2 is its power pin.

 Created 6 Feb 2012

 */
void setup() {
  Serial.begin(9600);
  // use pins A0 and A2 as the sensors voltage anf ground:
  pinMode(A0, OUTPUT);
  pinMode(A2, OUTPUT);
  // A0 is ground, A2 is voltage:
  digitalWrite(A0, LOW);
  digitalWrite(A2, HIGH);
}

void loop() {
  // read sensor:
  int sensorVal = analogRead(A1);
  // convert to voltage:
  float voltage = 4.46 * sensorVal / 1024.0;
  // convert to temperature:
  float temperature = (voltage - 0.5) * 100;
  // print it:
  Serial.println(temperature);
}
