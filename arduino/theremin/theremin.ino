// written at: luckylarry.co.uk
// very easy Theremin

// setup pins and variables for SRF05 sonar device
int echoPin = 2;                                // SRF05 echo pin (digital 2)
int initPin = 3;                                // SRF05 trigger pin (digital 3)
int speakerPin = 6;                             // Speaker pin
unsigned long pulseTime = 0;                    // stores the pulse in Micro Seconds
unsigned long distance = 0;                     // variable for storing the distance (cm) we'll use distance as a switch for the speaker
unsigned long soundDelay = 0;                   // variable for storing the deay needed for the pitch

//setup
void setup() {

  pinMode(speakerPin, OUTPUT);                  // sets pin 6 as output
  pinMode(initPin, OUTPUT);                     // set init pin 3 as output
  pinMode(echoPin, INPUT);                      // set echo pin 2 as input

 } 

// execute
void loop() {
  digitalWrite(initPin, HIGH);                  // send 10 microsecond pulse
  delayMicroseconds(10);                        // wait 10 microseconds before turning off
  digitalWrite(initPin, LOW);                   // stop sending the pulse
  pulseTime = pulseIn(echoPin, HIGH);           // Look for a return pulse, it should be high as the pulse goes low-high-low
  distance = pulseTime/58;                      // convert the pulse into distance (cm)
  soundDelay = pulseTime/3;                     // alter this variable to alter the pitch of the sound emitted

  // make the sound.
  // check the distance, if over 30cm make no sound
  if (distance < 30) {
  digitalWrite(speakerPin, HIGH);
  delayMicroseconds(soundDelay);
  digitalWrite(speakerPin, LOW);
  delayMicroseconds(soundDelay);
  }
}
