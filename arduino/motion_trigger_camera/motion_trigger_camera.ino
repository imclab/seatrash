/*

LUCKYLARRY.CO.UK - IR Remote control for Nikon using Arduino with motion trigger

Uses a PIR sensor to trigger the camera remote/ IR led if a change in background
temperature is detected.

*/

int currentState = 0;                                   // set a variable to store a count.
int pinPIR = 4;                                         // digital pin 4 for PIR
int pinLED = 9;                                         // digital pin 9 for LED
int pinIRLED = 13;                                      // assign the Infrared emitter/ diode to pin 13

void setup() {
  pinMode(pinIRLED, OUTPUT);                            // set the pin as an output
  pinMode(pinLED, OUTPUT);                              // set the LED pin as ouput
  pinMode(pinPIR, INPUT);                               // set the PIR pin as an input
}

// sets the pulse of the IR signal.
void pulseON(int pulseTime) {
  unsigned long endPulse = micros() + pulseTime;        // create the microseconds to pulse for
  while( micros() < endPulse) {
    digitalWrite(pinIRLED, HIGH);                       // turn IR on
    delayMicroseconds(13);                              // half the clock cycle for 38Khz (26.32×10-6s) - e.g. the 'on' part of our wave
    digitalWrite(pinIRLED, LOW);                        // turn IR off
    delayMicroseconds(13);                              // delay for the other half of the cycle to generate wave/ oscillation
  }

}

void pulseOFF(unsigned long startDelay) {
  unsigned long endDelay = micros() + startDelay;       // create the microseconds to delay for
  while(micros() < endDelay);
}

void takePicture() {
  for (int i=0; i < 2; i++) {
    pulseON(2000);                                      // pulse for 2000 uS (Microseconds)
    pulseOFF(27850);                                    // turn pulse off for 27850 us
    pulseON(390);                                       // and so on
    pulseOFF(1580);
    pulseON(410);
    pulseOFF(3580);
    pulseON(400);
    pulseOFF(63200);
  }                                                     // loop the signal twice.
}

void loop() {

  if ((digitalRead(pinPIR) == LOW) && (currentState <= 2)) { // count to limit the taking of photos
    takePicture();                                      // take the picture
    digitalWrite(pinLED, HIGH);                         // turn LED on
  } else {
    digitalWrite(pinLED, LOW);
    currentState = 0;                                   //reset the count when the PIR is off.
  }

  currentState++;
  delay(2000);                                          // delay for 2 seconds - 2 seconds between taking photos if the PIR is active for more than 2 seconds.
}
