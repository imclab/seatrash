#include <irremote.h>
 
int RECV_PIN = 9;
int ledPin =  13;
 
IRrecv irrecv(RECV_PIN);
 
decode_results results;
 
void setup()
{
  Serial.begin(9600);
  irrecv.enableIRIn(); // Start the receiver
  pinMode(ledPin, OUTPUT);
}
 
void loop() {
 
  if (irrecv.decode(&results)) {
    Serial.println(results.value, DEC);
 
    if(results.value == -2094865891)
      digitalWrite(ledPin, LOW);   // set the LED on
    else
      digitalWrite(ledPin, HIGH);   // set the LED on
 
    irrecv.resume(); // Receive the next value
  }
}
