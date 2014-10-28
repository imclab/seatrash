/*
 * Switch test program
 */

int pot = 0;
int relay = 3;
int motorPin = 11;              

void setup()                    // run once, when the sketch starts
{
  Serial.begin(9600);           // set up Serial library at 9600 bps
  pinMode(pot, INPUT); 
  pinMode(relay, OUTPUT);
  pinMode(motorPin, OUTPUT);
}

int getPot() {
  int v;
  v = analogRead(pot);
  v /= 4;
  v = max(v, 90);
  v = min(v, 255);
  return v;
}

int motorFoward() {
  analogWrite(motorPin, getPot());
  delay(1000);
  digitalWrite(motorPin, LOW);
  delay(1000);
  digitalWrite(relay, HIGH);
  Serial.println(getIR());
  delay(1000);
}

int motorBackward() {
  analogWrite(motorPin, getPot());
  delay(1000);
  digitalWrite(motorPin, LOW);
  delay(1000);
  digitalWrite(relay, LOW);
  Serial.println(getIR());
  delay(1000);
}

void loop()                     // run over and over again
{
  motorFoward();
  motorBackward();
}
