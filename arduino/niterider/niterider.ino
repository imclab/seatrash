/* 
 *  Knight Rider Overkill
 *
 *  By wiring a potentiometer to analog inputs 0 and 1 I can adjust the
 *  speed and brightness.
 *
 * In ASCII art the extra wiring looks something like this:
 *
 *          +-+ potentiometer
 *          |0|
 *          +-+
 *         / | \
 *      5v   |   Gnd
 *           |
 *         inputPin
 */
int speedPin = 0;  // pin to read the potentiometer for speed
int intenPin = 1;  // pin to read the potentiometer for brightness

#define NUMLIGHTS 5
int pins[NUMLIGHTS] = { 5, 6, 9, 10, 11 };

void setup()
{
  int lightPin;

  for (lightPin=0 ; lightPin < NUMLIGHTS ; lightPin++) {
    pinMode(pins[lightPin], OUTPUT);
  }
}

void loop()
{
  static int pos = 0;       // the position of the brightest light in the light array
  static int direction = 1; // the direction the bright spot is travelling (1 or -1)
  int light;
  int speed = analogRead(speedPin);  // how fast the light moves
  int inten = analogRead(intenPin) >> 2;  // read the value and divide by 4 to get range 0 .. 255

  if (inten > 255) inten = 255;

  for (light=0 ; light < NUMLIGHTS ; light++) {
    if (light == pos) {  // The light at this position is set bright      
      analogWrite(pins[light], inten);
    } else if ( light == (pos+1) || light == (pos-1)) {
      // This makes the two lights adjacent to the bright one glow at reduced intensity.
      // It makes for a nicer effect
      analogWrite(pins[light], inten>>4);
    } else {
      // Digital I/O pins 5 & 6 don't seem to go dark if I do analogWrite(pins[light], 0)
      // By doing digitalWrite it all looks correct
      digitalWrite(pins[light], 0);
    }    
  }

  // move the light position
  pos += direction;
  // if we've reached the end, reverse directions
  if (pos >= (NUMLIGHTS-1)) direction = -1;
  if (pos <= 0) direction = 1;
  delay(speed);
}
