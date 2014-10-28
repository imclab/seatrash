// Pin definition
// Actually are pins (P0 to P7) from the PCF8574
#define ID0_PIN B00000001
#define ID1_PIN B00000010
#define ID2_PIN B00000100
#define ID3_PIN B00001000
#define ID7_PIN B00010000
 
#define NOT_WRITE_PIN B00100000
#define MODE_PIN B01000000
 
#define NOT_SHUTDOWN_PIN B00000001
#define NOT_DECODE_PIN B00000010
#define NOT_CODE_B_PIN B00000100
#define DATA_COMING_PIN B00010000
 
// The 3 address lines are grounded.
// Looking at the datasheet this is the address 0x40.
// But Wire shifts the address one bit to left in write and read operations, so I have to provide the address shifted to right
#define ADDRESS 0x20
 
// Inclusion of Wire
#include <Wire.h>
 
void setup()
{
  // Setup for Wire
  Wire.begin();
 
  // Set write to high for the first time
  sendI2C((byte)NOT_WRITE_PIN);
 
  // A couple of tests
  // 1- Fill with 00000000 to 99999999
  for (int i = 0; i < 10; i++) {
    write8Digits(i * 11111111);
    delay(500);
  }
 
  // 2- Make a full refresh and display the time it takes
  unsigned long time = micros();
  write8Digits((unsigned long)0); // Number to test
  write8Digits(micros() - time); // Displaying microseconds
  delay(2000);
 
}
 
unsigned long counter = 0;
void loop()
{
  // Display an infinite counter
  write8Digits(counter++);
  // If you don't wait at least 2 microseconds, the display doesn't have the time to refresh the 8 digits
  delay(2);
}
 
void sendI2C(byte b)
{
  // Using of I2C in master mode with the device at ADDRESS
  Wire.beginTransmission(ADDRESS);
  // Data to send
  Wire.send(b); 
  // End of communication     
  Wire.endTransmission();
}
 
void write8Digits(unsigned long num)
{
   
  // Control word
  byte data = MODE_PIN | NOT_SHUTDOWN_PIN | DATA_COMING_PIN;
  sendI2C(data);
   
  // Write high
  sendI2C((byte)NOT_WRITE_PIN);
   
  // Sending a digit (will send Write to low)
  unsigned long digit = num;
  for (byte i = 0; i < 8; i++){
    writeDigit(digit % 10);
    digit /= 10;
  }
}
 
void writeDigit(byte b)
{
  // Using CODEB
  // The digital point allways off (it's inverted)
  byte data = ID7_PIN;
  // ID0 to ID3 with the number to display
  if (B00000001 & b)
    data |= ID0_PIN;
  if (B00000010 & b)
    data |= ID1_PIN;
  if (B00000100 & b)
    data |= ID2_PIN;
  if (B00001000 & b)
    data |= ID3_PIN;
   
  sendI2C(data);
 
  // Leave Write HIGH for the next writing
  sendI2C((byte)NOT_WRITE_PIN);
   
}
