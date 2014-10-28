/*
 * IRremote: IRsendDemo - demonstrates sending IR codes with IRsend
 * An IR LED must be connected to Arduino PWM pin 3.
 * Version 0.1 July, 2009
 * Copyright 2009 Ken Shirriff
 * http://arcfn.com
 */
 
#include 
 
IRsend irsend;
 
// just added my own array for the raw signal
unsigned int powerOn[68] = {4450,4500,550,1700,500,1750,500,1750,500,600,550,600,500,600,550,600,500,600,550,1700,550,1700,550,1700,500,600,550,600,500,600,550,600,500,650,500,600,550,1700,500,650,500,600,550,600,500,600,550,600,500,600,550,1700,550,600,500,1700,550,1700,550,1700,550,1700,500,1750,500,1750,500};
 
void setup()
{
  Serial.begin(9600);
}
 
void loop() {
 
      // altered the code just to send/test my raw code
      irsend.sendRaw(powerOn,68,38);
      delay(100);
 
}
