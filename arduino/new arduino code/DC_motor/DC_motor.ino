// dcMotor.pde - Run DC-motor to one direction
// (c) Kimmo Karvinen & Tero Karvinen http://botbook.com

int motorPin = 5; 

void setup() 
{
    pinMode(motorPin, OUTPUT); 
    digitalWrite(motorPin, HIGH); 
}

void loop() 
{ 
    delay(100);
}

