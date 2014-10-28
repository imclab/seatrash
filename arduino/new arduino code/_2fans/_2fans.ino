int fan1 = 9; // Optocoupler 1

int fan2 = 10; // Optocoupler 2

void setup() {

// nothing happens in setup

}

void loop() {

for(int fadeValue = 0 ; fadeValue <= 255; fadeValue +=5) {

// sets the value (range from 0 to 255):

analogWrite(fan1, fadeValue);

// wait for 400 milliseconds to see the dimming effect

delay(400);

analogWrite(fan2, 0);

}

delay (3000);

// fade out from max to min in increments of 2 points:

for(int fadeValue = 255 ; fadeValue >= 0; fadeValue -=2) {

// sets the value (range from 0 to 255):

analogWrite(fan1, fadeValue);

// wait for 400 milliseconds to see the dimming effect

delay(400);

analogWrite(fan2, 255);

}

delay (3000);

}
