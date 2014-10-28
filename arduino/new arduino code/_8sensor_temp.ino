#include <OneWire.h>
#include <DallasTemperature.h>

// Data wire is plugged into pin 3 on the Arduino
#define ONE_WIRE_BUS 3

// Setup a oneWire instance to communicate with any OneWire devices
OneWire oneWire(ONE_WIRE_BUS);

// Pass our oneWire reference to Dallas Temperature. 
DallasTemperature sensors(&oneWire);

// Assign the addresses of your 1-Wire temp sensors.
// See the tutorial on how to obtain these addresses:
// http://www.hacktronics.com/Tutorials/arduino-1-wire-address-finder.html

DeviceAddress oneThermometer = { 
0x28, 0xEF, 0xEA, 0x05, 0x06, 0x00, 0x00, 0x24 };
DeviceAddress twoThermometer = { 
0x28, 0x90, 0x8B, 0x07, 0x06, 0x00, 0x00, 0x43 };
DeviceAddress threeThermometer = { 
0x28, 0x78, 0x86, 0x07, 0x06, 0x00, 0x00, 0x27 };
DeviceAddress fourThermometer = { 
0x28, 0x56, 0x0A, 0x05, 0x06, 0x00, 0x00, 0x6F };
DeviceAddress fiveThermometer = { 
0x28, 0x82, 0x7F, 0x07, 0x06, 0x00, 0x00, 0xCF };
DeviceAddress sixThermometer = { 
0x28, 0xF0, 0x7E, 0x07, 0x06, 0x00, 0x00, 0xF4 };
DeviceAddress sevenThermometer = { 
0x28, 0x65, 0xF6, 0x05, 0x06, 0x00, 0x00, 0x5C };
DeviceAddress eightThermometer = { 
0x28, 0x59, 0x7C, 0x07, 0x06, 0x00, 0x00, 0xBD };

void setup(void)
{
  // start serial port
  Serial.begin(9600);
  // Start up the library
  sensors.begin();
  // set the resolution to 10 bit (good enough?)
  sensors.setResolution(oneThermometer, 10);
  sensors.setResolution(twoThermometer, 10);
  sensors.setResolution(threeThermometer, 10);
  sensors.setResolution(fourThermometer, 10);
  sensors.setResolution(fiveThermometer, 10);
  sensors.setResolution(sixThermometer, 10);
  sensors.setResolution(sevenThermometer, 10);
  sensors.setResolution(eightThermometer, 10);
}

void printTemperature(DeviceAddress deviceAddress)
{
  float tempC = sensors.getTempC(deviceAddress);
  if (tempC == -127.00) {
    Serial.print("Error getting temperature");
  } else {
    Serial.print("C: ");
    Serial.print(tempC);
    Serial.print(" F: ");
    Serial.print(DallasTemperature::toFahrenheit(tempC));
  }
}

void loop(void)
{ 
  delay(2000);
  Serial.print("Getting temperatures...\n\r");
  sensors.requestTemperatures();
  
  Serial.print("one temperature is: ");
  printTemperature(oneThermometer);
  Serial.print("\n\r");
  Serial.print("two temperature is: ");
  printTemperature(twoThermometer);
  Serial.print("\n\r");
  Serial.print("three temperature is: ");
  printTemperature(threeThermometer);
  Serial.print("\n\r");
  Serial.print("four temperature is: ");
  printTemperature(fourThermometer);
  Serial.print("\n\r");
  Serial.print("five temperature is: ");
  printTemperature(fiveThermometer);
  Serial.print("\n\r");
  Serial.print("six temperature is: ");
  printTemperature(sixThermometer);
  Serial.print("\n\r");
  Serial.print("seven temperature is: ");
  printTemperature(sevenThermometer);
  Serial.print("\n\r");
  Serial.print("eight temperature is: ");
  printTemperature(eightThermometer);
  Serial.print("\n\r");
  
  
}
 
