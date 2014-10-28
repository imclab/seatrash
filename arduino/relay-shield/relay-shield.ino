//Relay Shield
//by Boris Landoni
//www.open-electronics.org
//www.futurashop.it
 
// Variables will change:
int in=0;            
int out=0;
int an=0;
int inByte=0;
 
// the follow variables is a long because the time, measured in miliseconds,
// will quickly become a bigger number than can be stored in an int.
long interval = 1000;           // interval at which to blink (milliseconds)
 
void setup() {
 
    // start serial port at 9600 bps:
  Serial.begin(9600);
 
  // set the digital pin as output:
  for (int out=8; out<=13; out++){
    pinMode(out, OUTPUT);     
  }
}
 
void loop()
{
  // here is where you'd put code that needs to be running all the time.
 
  // check to see if it's time to blink the LED; that is, if the
  // difference between the current time and last time you blinked
  // the LED is bigger than the interval at which you want to
  // blink the LED.
 
  if (Serial.available() > 0) {
    protocollo();
  }
 
}
 
void protocollo()
{
  inByte = Serial.read();
    switch (inByte)
    {
        case 79: //O  out
 
          Serial.println("Out number? (1 to 6)");   // send an initial string
            while (Serial.available() <= 0)
            {
              delay(300);
            }
 
            out = Serial.read()-48;
            Serial.println("ricevuto ");
            Serial.print(out);
            if (out>=1&&out<=6)
            {
              out=out+7;
              if (!digitalRead(out))
                digitalWrite(out, HIGH);
              else
                digitalWrite(out, LOW);
 
              Serial.print("Out ");
              Serial.print(out-7);
              Serial.print(" = ");
              Serial.println(digitalRead(out));
            }
 
          break;
 
        case 73: //I
          //input
 
          Serial.println("In number? (1 to 6)");   // send an initial string
 
            while (Serial.available() <= 0)
            {
              delay(300);
            }
 
            in = Serial.read()-48;
            if (in>=1&&in<=6){
            in=in+1;
 
            Serial.print("In ");
            Serial.print(in-1);
            Serial.print(" = ");
            Serial.println(digitalRead(in));
            }
          break;
 
          case 65: //A
          //analog
 
          Serial.println("Analog number? (1 to 6)");   // send an initial string
 
            while (Serial.available() <= 0)
            {
              delay(300);
            }
 
            an = Serial.read()-48;
            if (an>=1&&an<=6){
            an=an-1;
 
            Serial.print("Analog ");
            Serial.print(an+1);
            Serial.print(" = ");
            Serial.println(analogRead(an));
            }
          break;
 
        //default:
          // if nothing else matches, do the default
          // default is optional
 
    }
 
}
