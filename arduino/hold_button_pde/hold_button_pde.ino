int inPin = 14;  // the number of the input pin (for me a push button)
int ledPin = 13; 

int current; //Current state of the button (LOW is pressed b/c i'm using the pullup resistors
int count;   // How long the button was held (secs)
byte previous = HIGH;
unsigned long firstTime;   // how long since the button was first pressed 


void setup(){
  Serial.begin(9600);    // Use serial for debugging
  pinMode(ledPin, OUTPUT);
  digitalWrite(inPin, HIGH); //turn on 20k pullup resistors to simplify switch input
}

void loop()
{
  current = digitalRead(inPin);
  if (current == LOW && previous == HIGH && millis()- firstTime > 200){
    firstTime = millis();    // if the buttons becomes press remember the time 
  }

  if (current == LOW && ((millis() - firstTime) % 1000) < 20 && millis() - firstTime > 500){
    ledblink(1, 50, ledPin); // Each second the button is held blink the indicator led and
    count++;                // and 1 to the counter
  }
  if (current == HIGH && previous == LOW && count >=3 && count < 6){
    ledblink(10,200,ledPin); // When the button is released if the counter is between the
  }                          // two numbers (3-6 blinks or secs) run the program

  if (current == HIGH && previous == LOW && count >=0 && count < 3){
    Serial.println("It Works!!!"); //This is where you would put you differnt functions
  }                                // with diffent time parameters

  if (current == HIGH){ // reset the counter if the button is not pressed
    count = 0;
  }

  previous = current;
}

void ledblink(int times, int lengthms, int pinnum){
  for (int x=0; x<times;x++){
    digitalWrite(pinnum, HIGH);
    delay (lengthms);
    digitalWrite(pinnum, LOW);
    delay(lengthms);
  }
}
