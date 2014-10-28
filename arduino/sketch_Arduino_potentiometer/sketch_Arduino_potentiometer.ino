const byte POTENTIOMETER = 0;
const byte CONTROL = 9;
int reading;
int value;

void setup() {
  pinMode(CONTROL, OUTPUT);
}

void loop() {
  reading = analogRead(POTENTIOMETER);
  value = map(reading, 0, 1024, 0, 255);   
  analogWrite(CONTROL, value);
}
