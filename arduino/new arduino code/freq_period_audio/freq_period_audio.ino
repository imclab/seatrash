/* Frequency & Period Measurement for Audio
 * connect pin 5,6,7 to input circuit
 *
 *
 *
 * KHM 2010 /  Martin Nawrath
 * Kunsthochschule fuer Medien Koeln
 * Academy of Media Arts Cologne
 */

#include "FreqPeriod.h"

double lfrq;
long int pp;

void setup() {
  Serial.begin(115200);
  FreqPeriod::begin();
  Serial.println("FreqPeriod Library Test");
}

void loop() {

  pp=FreqPeriod::getPeriod();
  if (pp ){

    Serial.print("period: ");
    Serial.print(pp);
    Serial.print(" 1/16us  /  frequency: ");

    lfrq= 16000400.0 / pp;
    printDouble(lfrq,6);
    Serial.print(" Hz");

    Serial.println("  ");
  }

}

//***************************************************************************
void printDouble( double val, byte precision){
  // prints val with number of decimal places determine by precision
  // precision is a number from 0 to 6 indicating the desired decimial places
  // example: lcdPrintDouble( 3.1415, 2); // prints 3.14 (two decimal places)

  if(val < 0.0){
    Serial.print('-');
    val = -val;
  }

  Serial.print (int(val));  //prints the int part
  if( precision > 0) {
    Serial.print("."); // print the decimal point
    unsigned long frac;
    unsigned long mult = 1;
    byte padding = precision -1;
    while(precision--)
      mult *=10;

    if(val >= 0)
      frac = (val - int(val)) * mult;
    else
      frac = (int(val)- val ) * mult;
    unsigned long frac1 = frac;
    while( frac1 /= 10 )
      padding--;
    while(  padding--)
      Serial.print("0");
    Serial.print(frac,DEC) ;
  }
}
