// midi.controller
// written by The Cat Herder
// Sends midi program change and control change messages based on foot pedal pressed

// Constants
#define SWITCH1 2
#define SWITCH2 3
#define SWITCH3 4
#define SWITCH4 5
#define SWITCH5 6 
#define LED1 7
#define LED2 8
#define LED3 9
#define LED4 10
#define LED5 11
#define BOUNCEDELAY 25

// Variables: 
int switches[5] = { SWITCH1, SWITCH2, SWITCH3, SWITCH4, SWITCH5 };
int switchState[5] = { HIGH, HIGH, HIGH, HIGH, HIGH }; 
// Initial state of switch is high due to internal pullup
int leds[5] = { LED1, LED2, LED3, LED4, LED5 };
int currentSwitch = 0;
int currentProgram = 22;   // current program - sent to the output
int bypassState = LOW;     // state of bypass pedal
int pedalActiveFlash = 50; // Delay for flash when pedal is pressed

void setup() {
  //  Set MIDI baud rate:
  Serial.begin(31250);

  // Setup Switches and activation LEDs
  for( currentSwitch = 0; currentSwitch < 5; currentSwitch++ ) {
    pinMode( switches[currentSwitch], INPUT );          // Set pin for switch
    digitalWrite( switches[currentSwitch], HIGH );      // Turn on internal pullup
    pinMode( leds[currentSwitch], OUTPUT );             // Set pin for LED
    flashPin( leds[currentSwitch], 100 ); // Flash LED
  }
}

void loop() {
  for( currentSwitch = 0; currentSwitch < 5; currentSwitch++ ) {
    if((digitalRead(switches[currentSwitch]) != switchState[currentSwitch] )&&(switchState[currentSwitch] == HIGH)){
      switch( currentSwitch ) {
        case 0:
          //Bypass
          if( bypassState == LOW ) {
            bypassState = HIGH;
            midiSend( 0xB0, 0x5B, 0x00 ); // bypass off
            digitalWrite( leds[currentSwitch], LOW );
          }
          else {
            bypassState = LOW;
            midiSend( 0xB0, 0x5B, 0x7F ); // bypass on
            digitalWrite( leds[currentSwitch], HIGH );
          }
          break;
        case 1:
          //Prev Program
          currentProgram = currentProgram--;
          if( currentProgram < 1 )
            currentProgram = 0; // Don't go lower than 0
          midiProg( 0xC0, currentProgram );
          flashPin( leds[currentSwitch], pedalActiveFlash );
          break;
        case 2:
          // Next Program
          currentProgram = currentProgram++;
          if( currentProgram > 96 )
            currentProgram = 97; // Don't go lower than 97
          midiProg( 0xC0, currentProgram );
          flashPin( leds[currentSwitch], pedalActiveFlash );
          break;
        case 3:
          // Favourite 1
          currentProgram = 22;
          midiProg( 0xC0, currentProgram );
          flashPin( leds[currentSwitch], pedalActiveFlash );
          break;
        case 4:
          // Favourite 2
          currentProgram = 27;
          midiProg( 0xC0, currentProgram );
          flashPin( leds[currentSwitch], pedalActiveFlash );
          break;
      }
      delay( BOUNCEDELAY );
    }
    switchState[currentSwitch] = digitalRead( switches[currentSwitch] );
  }  
}

//  Send a three byte midi message  
void midiSend(char status, char data1, char data2) {
  Serial.print(status, BYTE);
  Serial.print(data1, BYTE);
  Serial.print(data2, BYTE);
}

//  Send a two byte midi message  
void midiProg(char status, int data ) {
  Serial.print(status, BYTE);
  Serial.print(data, BYTE);
}

void flashPin( int ledPin, int flashDelay ) {
  digitalWrite( ledPin, HIGH );
  delay( flashDelay );
  digitalWrite( ledPin, LOW );
}
