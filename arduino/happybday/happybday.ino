/* Happy birthday hack
*  Johan Euphrosine 2009
*  using freqout libray by Paul Badger
*  piezo on pin 9
*  push button on pin 8
*  leds on pin 10,11,12 for blinking madness
*/
/*  freqout(freq, t)  // freq in hz, t in ms
*   Paul Badger 2007
*   a simple tone generation function
*   generates square waves of arbitrary frequency and duration
*   program also includes a top-octave lookup table & transposition function
*/

#include <math.h>  // requires an Atmega168 chip 

#define outpin 9   // audio out to speaker or amp
int ptime;
int   k,  x, dur, freq, t; 
int i, j;


float ps;         // variable for pow pitchShift routine

float noteval;

// note values for two octave scale
// divide them by powers of two to generate other octaves
float A     = 14080;
float AS    = 14917.2;
float B     = 15804.3;
float C     = 16744;
float CS    = 17739.7;
float D     = 18794.5;
float DS    = 19912.1;
float E     = 21096.2;
float F     = 22350.6;
float FS    = 23679.6;
float G     = 25087.7;
float GS    = 26579.5;
float A2    = 28160;
float A2S   = 29834.5;
float B2    = 31608.5;
float C2    = 33488.1;
float C2S   = 35479.4;
float D2    = 37589.1;
float D2S   = 39824.3;
float E2    = 42192.3;
float F2    = 44701.2;
float F2S   = 47359.3;
float G2    = 50175.4;
float G2S   = 53159;
float A3    = 56320;

//octaves  - corresponds to piano octaves
float oct8 = 4;
float oct7 = 8;
float oct6 = 16;
float oct5 = 32;
float oct4 = 64;
float oct3 = 128;
float oct2 = 256;
float oct1 = 512;
float oct0 = 1024;

//rhythm values
int wh = 1024;
int h  = 512;
int dq = 448;
int q = 256;
int qt = 170;
int de = 192;
int e = 128;
int et = 85;
int dsx = 96;
int sx = 64;
int thx = 32;

// major scale just for demo, hack this

float happyBirthday[] = {
G, 0, G, A2, 0, 0, 
G, 0, 0, C2, 0, 0,
B2, 0, 0, 0, 0, 0,
G, 0, G, A2, 0, 0,
G, 0, 0, D2, 0, 0, 
C2, 0, 0, 0, 0, 0,
G, 0, G, G2, 0, 0,
E2, 0, 0, C2, 0, 0, 
B2, 0, 0, A2, 0, 0,
F2, 0, F2, E2, 0, 0,
C2, 0, 0, D2, 0, 0,
C2, 0, 0, 0, 0, 0,
};

void setup() { 
  pinMode(10, OUTPUT);      // sets the digital pin as output
  pinMode(11, OUTPUT);      // sets the digital pin as output
  pinMode(12, OUTPUT);      // sets the digital pin as output
  pinMode(8, INPUT);      // sets the digital pin as output
} 


void loop(){   
 for(i= 0; i<=11; i++){ 
     int value = HIGH;
     while (digitalRead(8) == LOW) {
       digitalWrite(10, value);
       delay(100);
       value = !value;
     };     
    ps = (float)i / 12;         // choose new transpose interval every loop
    for(x= 0; x<=12*6; x++){
      noteval = (happyBirthday[x] / oct4) * pow(2,ps);    // transpose scale up 12 tones
// pow function generates transposition
// eliminate " * pow(2,ps) " to cut out transpose routine

      dur = 100;

      digitalWrite(10+(x&3), HIGH);
      digitalWrite(10+((x+1)&3), LOW);
      digitalWrite(10+((x+2)&3), LOW);

      if ((int)noteval > 0) {
        freqout((int)noteval, dur);
      } else {
        delay(100);
      }
    }
  }
} 

void freqout(int freq, int t)  // freq in hz, t in ms
{
  int hperiod;                               //calculate 1/2 period in us
  long cycles, i;
  pinMode(outpin, OUTPUT);                   // turn on output pin

  hperiod = (500000 / freq) - 7;             // subtract 7 us to make up for digitalWrite overhead

  cycles = ((long)freq * (long)t) / 1000;    // calculate cycles

  for (i=0; i<= cycles; i++){              // play note for t ms 
    digitalWrite(outpin, HIGH); 
    delayMicroseconds(hperiod);
    digitalWrite(outpin, LOW); 
    delayMicroseconds(hperiod - 1);     // - 1 to make up for digitaWrite overhead
  }
pinMode(outpin, INPUT);                // shut off pin to avoid noise from other operations

}
