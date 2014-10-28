/* YourDuinoStarter Example: Beeper Tone test
 - Uses the Arduino Tone Library to make sounds on the
   Beeper in the starter Kit, or an 8 Ohm speaker.
 - SEE the comments after "//" on each line below
 - CONNECTIONS:
 - Beeper/Speaker on Arduino port 11 (Can be changed)
 - If speaker is used, Use 100 ohm resistor 
   (or two 220 ohms in parallel) in series with speaker.
 - V1.02 02/15/13
 Questions: terry@yourduino.com */

/*-----( Import needed libraries )-----*/
#include "pitches.h"

/*-----( Declare Constants and Pin Numbers )-----*/
#define TonePIN  11  // Which pin to connect to

/*-----( Declare objects )-----*/
//none
/*-----( Declare Variables )-----*/
int thisNote;          // which note to play now
int noteDuration;      // How long to play the note
int pauseBetweenNotes; // Length between notes

// notes in the melody: (0 is a 'rest' )
// This is an "array" of data holding the melody
int melody[] = {
  NOTE_C4, NOTE_G3,NOTE_G3, NOTE_A3, NOTE_G3,0, NOTE_B3, NOTE_C4};

// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurations[] = {
  4, 8, 8, 4,4,4,4,4 };

void setup()   /****** SETUP: RUNS ONCE ******/
{
  // go through each of the notes of the melody:
  for (thisNote = 0; thisNote < 8; thisNote++) 
  { // Calculate and play one note and a pause after it

    // to calculate the note duration, take one second 
    // divided by the note type.
    // e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    noteDuration = 1000/noteDurations[thisNote];
    tone(TonePIN, melody[thisNote],noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
   }  // End of one note

}//--(end setup )---


void loop()   /****** LOOP: RUNS CONSTANTLY ******/
{
// Nothing. Once was enough :-)
}//--(end main loop )---

/*-----( Declare User-written Functions )-----*/
// none

//*********( THE END )***********


