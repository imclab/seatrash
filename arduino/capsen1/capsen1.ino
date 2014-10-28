//CapSen1
//ver 2 Mar 11, 20:20
//Created from online demo 2 Mar 11, 20:20
//Demo: At....
//http://www.arduino.cc/playground/Main/CapSense

#include <CapSense.h>

/*
 ** Slight adaptation, for <ref> of...

 * CapitiveSense Library Demo Sketch
 * Paul Badger 2008

 ** Demo being used with ArduCapSense shield... ArduCapSense.com,
 ** connected to an RBBB- see pin numbering
    guide elsewhere in essay this comes from
    for shield pin numbers.
 (Shield pin numbering starts at upper left,
    at "Aref", as "1", proceeds around board
    clockwise.)

 Arduino  Shield
 0v    CORRECT "gnd" pin: 25...only that one is "good"
 5v    5v: pin 26
 D10   Pin 6: The pin the shield would connect to
          if plugged into an Arduino
 D2    Pin 14: ditto
 D3    Pin 13: ditto


 */

CapSense   cs_10_3 = CapSense(10,3);        // 10 meg ohm resistor between pins 10 & 3, pin 3 is to "7 button"
CapSense   cs_10_2 = CapSense(10,2);        // 10 meg ohm resistor between pins 10 & 2, pin 2 is to "8 button"

//cs_10_3, cs_10_2 are "arbitrary" names... you could use "Peg" and "Fred", as long as you substituted 1:1 throughout the
//program. Hopefully you can work out for yourself how these objects got the names they were given.

void setup()
{

   cs_10_3.set_CS_AutocaL_Millis(0xFFFFFFFF);     // turn off autocalibrate on first channel - just as an example
   Serial.begin(9600);
   Serial.println("Time since last, reading on first line, reading on second.");
   Serial.println();
}

void loop()
{
    long start = millis();
    long total1 =  cs_10_3.capSense(30);
    long total2 =  cs_10_2.capSense(30);

    Serial.print(millis() - start);        // check on performance in milliseconds
    Serial.print("\t");                    // tab character for debug window spacing

    Serial.print(total1);                  // print sensor output 1
    Serial.print("\t");
    Serial.println(total2);

    delay(10);                             // arbitrary delay to avoid overwhelming serial port
}
