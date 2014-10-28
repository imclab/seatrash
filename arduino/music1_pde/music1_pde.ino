*

 * Au Clair de la Lune with an Arduino and a PC speaker.
 * The calculation of the tones is made following the mathematical
 * operation:
 *
 *       timeUpDown = 1/(2 * toneFrequency) = period / 2
 * )c( Copyleft AlexandreQuessy 2006 http://alexandre.quessy.net
 * Inspired from D. Cuartielles's http://www.arduino.cc/en/Tutorial/PlayMelody
 */

 int ledPin = 13;
 int speakerOut = 10;

 /* 2 octavas :: semitones. 0 = do, 2 = re, etc. */
 /* MIDI notes from 48 to 71. Indices here are from 0 to 23. */

 int timeUpDown[] = {3822, 3606, 3404, 3214, 3032, 2862, 
                    2702, 2550, 2406, 2272, 2144, 2024,
                    1911, 1803, 1702, 1607, 1516, 1431, 
                    1351, 1275, 1203, 1136, 1072, 1012};
 /* our song. Each number is a (MIDI note - 48) on a beat. */

 byte song[] = {12,12,12,14, 16,16,14,14, 12,16,14,14, 12,12,12,12,
 14,14,14,14, 9,9,9,9, 14,12,11,9, 7,7,7,7};
// do do do re mi re do mi re re do... 

 byte beat = 0;
 int MAXCOUNT = 32;
 float TEMPO_SECONDS = 0.2; 
 byte statePin = LOW;
 byte period = 0;
 int i, timeUp;

 void setup() {
  pinMode(ledPin, OUTPUT); 
  pinMode(speakerOut, OUTPUT);
 }


 void loop() {
  digitalWrite(speakerOut, LOW);     
  for (beat = 0; beat < MAXCOUNT; beat++) {
    statePin = !statePin;
    digitalWrite(ledPin, statePin);

    timeUp = timeUpDown[song[beat]];

    period = ((1000000 / timeUp) / 2) * TEMPO_SECONDS; 
    for (i = 0; i < period; i++) {
      digitalWrite(speakerOut, HIGH);
      delayMicroseconds(timeUp);
      digitalWrite(speakerOut, LOW);
      delayMicroseconds(timeUp);
    }
    /* Uncomment this if you want notes to be discrete */
    /* delay(50); */
  }
  digitalWrite(speakerOut, LOW);
  delay(1000);
 }

Much improved version:

/*

 * Square wave tune with an Arduino and a PC speaker.
 * The calculation of the tones is made following the mathematical
 * operation:
 *
 *	timeUpDown = 1/(2 * toneFrequency) = period / 2
 * )c( Copyleft 2009 Daniel Gimpelevich
 * Inspired from AlexandreQuessy's http://playground.arduino.cc/Code/MusicalAlgoFun
 */

const byte ledPin = 13;
const byte speakerOut = 11; /* This makes a standard old PC speaker connector fit nicely over the pins. */

/* 10.5 octaves :: semitones. 60 = do, 62 = re, etc. */
/* MIDI notes from 0, or C(-1), to 127, or G9. */
/* Rests are note number -1. */

unsigned int timeUpDown[128];

/* our song. Each number pair is a MIDI note and a note symbol. */
/* Symbols are 1 for whole, -1 for dotted whole, 2 for half, */
/* -2 for dotted half, 4 for quarter, -4 for dotted quarter, etc. */

const byte BPM = 120;
const char song[] = {	
  64,4,64,4,65,4,67,4,		67,4,65,4,64,4,62,4,
  60,4,60,4,62,4,64,4,		64,-4,62,8,62,2,
  64,4,64,4,65,4,67,4,		67,4,65,4,64,4,62,4,
  60,4,60,4,62,4,64,4,		62,-4,60,8,60,2,
  62,4,62,4,64,4,60,4,		62,4,64,8,65,8,64,4,60,4,
  62,4,64,8,65,8,64,4,62,4,	60,4,62,4,55,2,
  64,4,64,4,65,4,67,4,		67,4,65,4,64,4,62,4,
  60,4,60,4,62,4,64,4,		62,-4,60,8,60,2};

int period, i;
unsigned int timeUp, beat;
byte statePin = LOW;
const float TEMPO_SECONDS = 60.0 / BPM; 
const unsigned int MAXCOUNT = sizeof(song) / 2;

void setup() {
  pinMode(ledPin, OUTPUT); 
  pinMode(speakerOut, OUTPUT);
  for (i = 128; i--;)
    timeUpDown[i] = 1000000 / (pow(2, (i - 69) / 12.0) * 880);
}

void loop() {
  digitalWrite(speakerOut, LOW);     
  for (beat = 0; beat < MAXCOUNT; beat++) {
    statePin = !statePin;
    digitalWrite(ledPin, statePin);

    i = song[beat * 2];
    timeUp = (i < 0) ? 0 : timeUpDown[i];

    period = (timeUp ? (1000000 / timeUp) / 2 : 250) * TEMPO_SECONDS
      * 4 / song[beat * 2 + 1];
    if (period < 0)
      period = period * -3 / 2;
    for (i = 0; i < period; i++) {
      digitalWrite(speakerOut, timeUp ? HIGH : LOW);
      delayMicroseconds(timeUp ? timeUp : 2000);
      digitalWrite(speakerOut, LOW);
      delayMicroseconds(timeUp ? timeUp : 2000);
    }
    delay(50);
  }
  digitalWrite(speakerOut, LOW);
  delay(1000);
}


