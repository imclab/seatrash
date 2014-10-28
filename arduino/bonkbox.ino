/* BonkBox, an offshoot of The Misfits Orchestra
 * MusicHackParis 2012
 * Any questions: <gabe@squirrelsoup.net>
 * Code is Free-as-in-Beer-and-Speech Licensed
 */

#include <SoftwareSerial.h>
#define OUT_0 13
#define OUT_1 11
#define OUT_2 12
#define OUT_3 10

//MIDI Input on pin 6
SoftwareSerial soft(5, 6);

void setup() {
   soft.begin( 31250 );
   Serial.begin(9600);
   //Configure all pins as output
   pinMode(OUT_0, OUTPUT);
   pinMode(OUT_1, OUTPUT);
   pinMode(OUT_2, OUTPUT);
   pinMode(OUT_3, OUTPUT);

   //Turn off all outputs
   digitalWrite (OUT_0, HIGH);
   digitalWrite (OUT_1, HIGH);
   digitalWrite (OUT_2, HIGH);
   digitalWrite (OUT_3, HIGH);

}


void playLight(int light) {
   //Turn on a specific light, time factor is currently ignored.
   digitalWrite( light, LOW);
   //delay(time );
   //digitalWrite( light, HIGH );
   //delay(time); // In case of repeated hits !
}

void killLight(int light, int time) {
   //Turn a specific light off after 'time' ms
   delay(time);
   digitalWrite( light, HIGH );
}


int counter;

// Loop with MIDI control
void loop() {

   if( soft.available() > 0 ) {
       byte b1 = soft.read();
       //For note on (0x9[0-F])
       if( b1 == 0x9F ) {//Change second nibble to channel number (0-F)
           byte b2 = soft.read() & 127;
           switch( b2 ) {
               case 12:
                   playLight (OUT_0);
                   break;
               case 14:
                   playLight (OUT_1);
                   break;
               case 16:
                   playLight (OUT_2);
                   break;
               default:
                   break;
           }
           Serial.println( b2 );  // Current note
       }
       //For note off (0x8[0-F])
       if( b1 == 0x8F ) {//Change second nibble to channel number (0-F)
            byte b2 = soft.read() & 127;
            switch( b2 ) {
                          
                case 12:
                   //killLight (OUT_0, 0);
                    break;
                case 14:
                   //killLight (OUT_1, 0);
                    break;
                case 16:
                    killLight (OUT_0, 444);
                    killLight (OUT_1, 0);
                    killLight (OUT_2, 0);
                    playLight (OUT_0);
                    killLight (OUT_0, 444);
                  
                    break;
                default:
   break;
           }
           Serial.println("Note Off");
           Serial.println( b2 );  // Current note
       }
   }
   return;
}

2012/6/15 Gabriel Dulac-Arnold <gabe@squirrelsoup.net>

    /* BonkBox, an offshoot of The Misfits Orchestra
     * MusicHackParis 2012
     * Any questions: <gabe@squirrelsoup.net>
     * Code is Free-as-in-Beer-and-Speech Licensed
     */

    #include <SoftwareSerial.h>
    #define OUT_0 13
    #define OUT_1 11
    #define OUT_2 12
    #define OUT_3 10

    //MIDI Input on pin 6
    SoftwareSerial soft(5, 6);

    void setup() {
       soft.begin( 31250 );
       Serial.begin(9600);
       //Configure all pins as output
       pinMode(OUT_0, OUTPUT);
       pinMode(OUT_1, OUTPUT);
       pinMode(OUT_2, OUTPUT);
       pinMode(OUT_3, OUTPUT);

       //Turn off all outputs
       digitalWrite (OUT_0, HIGH);
       digitalWrite (OUT_1, HIGH);
       digitalWrite (OUT_2, HIGH);
       digitalWrite (OUT_3, HIGH);

    }


    void playLight(int light, int time) {
       //Turn on a specific light, time factor is currently ignored.
       digitalWrite( light, LOW);
       //delay(time );
       //digitalWrite( light, HIGH );
       //delay(time); // In case of repeated hits !
    }

    void killLight(int light, int time) {
       //Turn a specific light off after 'time' ms
       delay(time);
       digitalWrite( light, HIGH );
    }


    int counter;

    // Loop with MIDI control
    void loop() {

       if( soft.available() > 0 ) {
           byte b1 = soft.read();
           //For note on (0x9[0-F])
           if( b1 == 0x9F ) {//Change second nibble to channel number (0-F)
               byte b2 = soft.read() & 127;
               switch( b2 ) {
                   case 12:
                       playLight (OUT_0, 1500);
                       break;
                   case 14:
                       playLight (OUT_1, 1000);
                       break;

                   case 16:
                       playLight (OUT_2, 500);

                       break;
                   default:
                       break;
               }
               Serial.println( b2 );  // Current note
           }
           //For note off (0x8[0-F])
           if( b1 == 0x8F ) {//Change second nibble to channel number (0-F)
               byte b2 = soft.read() & 127;
               switch( b2 ) {
                   case 12:
                       //killLight (OUT_0, 0);
                       break;
                   case 14:
                       //killLight (OUT_1, 0);
                       break;
                   case 16:
                       killLight (OUT_0, 0);
                       killLight (OUT_1, 0);
                       killLight (OUT_2, 0);
                       break;
                   default:
                       break;
               }
               Serial.println("Note Off");
               Serial.println( b2 );  // Current note
           }
       }
       return;
    }

