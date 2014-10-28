// Maurice Ribble 
// 4-6-2008
// http://www.glacialwanderer.com/hobbyrobotics

// This code just lets you turn a digital out pin on and off.  That's
// all that is needed to verify a relay curcuit is working.
// Press the space bar to toggle the relay on and off.

#define RELAY_PIN 3

void setup()
{
  pinMode(RELAY_PIN, OUTPUT);
  Serial.begin(9600); // open serial
  Serial.println("Press the spacebar to toggle relay on/off");
}

void loop()
{
  static int relayVal = 0;
  int cmd;
  
  while (Serial.available() > 0)
  {
    cmd = Serial.read();
      
    switch (cmd)
    {
    case ' ':
      {
        relayVal ^= 1; // xor current value with 1 (causes value to toggle)
        if (relayVal)
          Serial.println("Relay on");
        else
          Serial.println("Relay off");
        break;
      }
    default:
      {
        Serial.println("Press the spacebar to toggle relay on/off");
      }
    }
      
    if (relayVal)
      digitalWrite(RELAY_PIN, HIGH);
    else
      digitalWrite(RELAY_PIN, LOW);
   }
}

