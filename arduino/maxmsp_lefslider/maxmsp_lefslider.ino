int ledPin = 9;

void setup()
{
  // begin the serial communication
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
}

void loop()
{
  byte val;

  // check if data has been sent from the computer
  if (Serial.available()) {
    // read the most recent byte (which will be from 0 to 255)
    val = Serial.read();
    // set the brightness of the LED
    analogWrite(ledPin, val);
  }
}
