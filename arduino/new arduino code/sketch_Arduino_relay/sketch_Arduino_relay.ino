/* sketch 
turn on a fan using a relay and a button
*/
int pinButton = 8;
int Relay = 2;
int stateRelay = LOW;
int stateButton;
int previous = LOW;
long time = 0;
long debounce = 500;

void setup() {
  pinMode(pinButton, INPUT);
  pinMode(Relay, OUTPUT);
}

void loop() {
  stateButton = digitalRead(pinButton);  
  if(stateButton == HIGH && previous == LOW && millis() - time > debounce) {
    if(stateRelay == HIGH){
      stateRelay = LOW; 
    } else {
       stateRelay = HIGH; 
    }
    time = millis();
  }
  digitalWrite(Relay, stateRelay);
  previous == stateButton;
}
