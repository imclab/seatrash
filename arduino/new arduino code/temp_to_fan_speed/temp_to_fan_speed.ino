// Definition of Arduino type
#if defined(__AVR_ATmega1280__) || defined(__AVR_ATmega2560__)
#define  IS_MEGA  (1)
#define  IS_UNO   (0)
#else
#define  IS_MEGA  (0)
#define  IS_UNO   (1)
#endif

// Analog output (i.e PWM) pins. These must be chosen so that we can change the PWM frequency without affecting the millis()
// function or the MsTimer2 library. So don't use timer/counter 1 or 2. See comment in setup() function.
// THESE PIN NUMBERS MUST NOT BE CHANGED UNLESS THE CODE IN setup(), setTransistorFanSpeed() AND setDiodeFanSpeed() IS CHANGED TO MATCH!
#if IS_UNO
// On the Uno we can only use the OC1B pin, so these pin numbers are both 10
const int transistorFanPin = 10;     // OC1B
const int diodeFanPin = 10;          // OC1B
#else
// On the Mega we use OC1B and OC1C
const int transistorFanPin = 12;     // OC1B
const int diodeFanPin = 13;          // OC1C
#endif

// Definitions for PWM fan control
const unsigned char maxFanSpeed = 80;   // this is calculated as 16MHz divided by 8 (prescaler), divided by 25KHz (target PWM frequency from Intel specification) 

void setup()
{
  // Set up the PWM pins for a PWM frequency close to the recommended 25KHz for the Intel fan spec.
  // We can't get this frequency using the default TOP count of 255, so we have to use a custom TOP value.
  
#if IS_UNO

  // Only timer/counter 1 is free because TC0 is used for system timekeeping (i.e. millis() function),
  // and TC2 is used for our 1-millisecond tick. TC1 controls the PWM on Arduino pins 9 and 10.
  // However, we can only get PWM on pin 10 (controlled by OCR1B) because we are using OCR1A to define the TOP value.
  // Using a prescaler of 8 and a TOP value of 80 gives us a frequency of 16000/(8 * 80) = 25KHz exactly.
  TCCR1A = (1 << COM1B1) | (1 << COM1B0) | (1 << WGM11) | (1 << WGM10);  // OC1A (pin 9) disconnected, OC1B (pin 10) = inverted fast PWM  
 #ifdef FAN_AUDIO_TEST
  // test code to get 440Hz output (= concert A) to test the logic 
  OCR1AH = 0;
  OCR1BL = 71;  // 50% duty cycle 
  TCCR1B = (1 << WGM13) | (1 << WGM12) | (1 << CS12);  // TOP = OCRA, prescaler = 256

  OCR1AL = 141; // TOP = 141, 16000000 / (256 * 142) = 440.014
  OCR1BH = 0;
 #else
  OCR1AH = 0;
  OCR1AL = 79;  // TOP = 79
  TCCR1B = (1 << WGM13) | (1 << WGM12) | (1 << CS11);  // TOP = OCR0A, prescaler = 8

  OCR1BH = 0;
  OCR1BL = maxFanSpeed;  // max fan speed (i.e. pin 5 initially low all the time)  
 #endif

  TCNT1H = 0;
  TCNT1L = 0; 
#else

  // On the Mega we use TC1 and OCR1B, OCR1C
  TCCR1A = (1 << COM1B1) | (1 << COM1B0) | (1 << COM1C1) | (1 << COM1C1) | (1 << WGM11) | (1 << WGM10);  // OC1A disconnected, OC1B = OC1C inverted fast PWM  
  TCCR1B = (1 << WGM13) | (1 << WGM12) | (1 << CS11);  // TOP = OCR1A, prescaler = 8
  TCCR1C = 0;
  OCR1AH = 0;
  OCR1AL = 79;  // TOP = 79

  OCR1BH = 0;
  OCR1BL = maxFanSpeed;
  OCR1CH = 0;
  OCR1CL = maxFanSpeed;
  
  TCNT1H = 0;
  TCNT1L = 0;
#endif
  
  // We have to enable the ports as outputs before PWM will work.
  pinMode(transistorFanPin, OUTPUT);
  pinMode(diodeFanPin, OUTPUT);
}

// Set the transistor fan speed, where 0 <= fanSpeed <= maxFanSpeed
void setTransistorFanSpeed(unsigned char fanSpeed)
{
  OCR1BH = 0;
  OCR1BL = fanSpeed;
}

// Set the diode fan speed, where 0 <= fanSpeed <= maxFanSpeed
void setDiodeFanSpeed(unsigned char fanSpeed)
{
#if IS_UNO
  OCR1BH = 0;
  OCR1BL = fanSpeed;
#else
  OCR1CH = 0;
  OCR1CL = fanSpeed;
#endif
}



void loop()
{
   setTransistorFanSpeed(80);
   delay(30000);   // run for 30 seconds at maximum fan speed
   setTransistorFanSpeed(28);
   delay(30000);   // run for 30 seconds at low fan speed
}
