// Pin usage
#define ID0_PIN 2
#define ID1_PIN 3
#define ID2_PIN 4
#define ID3_PIN 5
#define ID4_PIN 8
#define ID5_PIN 9
#define ID6_PIN 10
#define ID7_PIN 11
 
#define NOT_WRITE_PIN 6
#define MODE_PIN 7
 
// Note that these pins are the same as ID4-ID7
#define NOT_SHUTDOWN_PIN 8
#define NOT_DECODE_PIN 9
#define NOT_CODE_B_PIN 10
#define DATA_COMING_PIN 11
 
void setup()
{
 // All pins are output
 pinMode(ID0_PIN, OUTPUT);
 pinMode(ID1_PIN, OUTPUT);
 pinMode(ID2_PIN, OUTPUT);
 pinMode(ID3_PIN, OUTPUT);
 pinMode(ID4_PIN, OUTPUT);
 pinMode(ID5_PIN, OUTPUT);
 pinMode(ID6_PIN, OUTPUT);
 pinMode(ID7_PIN, OUTPUT);
 pinMode(NOT_WRITE_PIN, OUTPUT);
 pinMode(MODE_PIN, OUTPUT);
 
 // A couple of tests
 // 1- Fill with 00000000 to 99999999
 for (int i = 0; i < 10; i++) {
   write8Digits(i * 1111);
   delay(2000);
 }
 
 // 2- Make a full refresh and display the time it takes
 unsigned long time = micros();
 write8Digits(0); // Number to test
 write8Digits(micros() - time); // Displaying microseconds
 delay(1000);
}
 
unsigned long counter = 0;
 
void loop()
{
 // Display an infinite counter
 write8Digits(counter++);
 delay(2); // If you don't wait at least 2 microseconds, the display doesn't have the time to refresh the 8 digits
}
 
// Function to write the 8 digits
// Uses Code B encoding in the ICM
void write8Digits(unsigned long num)
{
 // Control Mode
 digitalWrite(NOT_WRITE_PIN, HIGH);
 digitalWrite(MODE_PIN, HIGH);
 
 // Setup control word
 digitalWrite(NOT_SHUTDOWN_PIN, HIGH);  // Normal mode
 digitalWrite(NOT_DECODE_PIN, LOW); // Decode mode
 digitalWrite(NOT_CODE_B_PIN, LOW); // CodeB mode
 digitalWrite(DATA_COMING_PIN, HIGH); // The data to display will follow
 
 // Write the control word
 digitalWrite(NOT_WRITE_PIN, LOW);
 digitalWrite(NOT_WRITE_PIN, HIGH);
 
 // Write digits, so mode to low
 digitalWrite(MODE_PIN, LOW);
 
 // Send the 8 digits, starting by the least significant
 unsigned long digit = num;
 for (byte i = 0; i < 8; i++){
   writeDigit(digit % 10);
   digit /= 10;
 }
}
 
void writeDigit(byte b)
{
 // I'm using CodeB, so I only need the 4 least significant pins
 digitalWrite(ID0_PIN, B00000001 & b);
 digitalWrite(ID1_PIN, B00000010 & b);
 digitalWrite(ID2_PIN, B00000100 & b);
 digitalWrite(ID3_PIN, B00001000 & b);
 // Digital point allways low (Note that it's inverted by the ICM)
 digitalWrite(ID7_PIN, HIGH);
 
 // Write the digit
 digitalWrite(NOT_WRITE_PIN, LOW);
 digitalWrite(NOT_WRITE_PIN, HIGH);
}
