SyncLED library for Arduino

Version 1.0

by Byron Guernsey

contact: okachobi@gmail.com

See the online documentation here: http://code.google.com/p/arduino-library-syncled/
See examples/ directory for simple examples

This is a convenience library for synchronously blinking various patterns on LEDs.  It supports blinking using PWM for smooth fading on pins supporting PWM, custom patterns of up to 32 transitions, and can be used to easily blink a number to indicate a status.

----

Installation:

  * Copy the SyncLED/ directory and all contents to your Arduino/libraries/  directory
  * On Mac OSX this is ~/Documents/Arduino/libraries
  * On other systems its the directory containing your sketches
  * You may need to create the libraries/ subdirectory if it does not exist
  * Restart Arduino IDE to pick up new libraries

----
Simple usage:

{{{
#include <SyncLED.h>

SyncLED Status(13);

void setup() {


  // Blink light 5 times, 200ms on/off, followed by a default 4x delay ( 800ms delay )
  Status.blinkPattern((byte) 5, 200UL);

  // or...

  // Blink the same thing as above using a custom pattern
  Status.blinkPattern( 0B00000101010101UL, 200UL, 14 );

}

void loop() {
  Status.update();
}

}}}

