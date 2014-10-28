Here is the code for the LM35 Temp sensor I posted on YOUTUBE. Hope it helps.

Arduino Code:


#include <Servo.h>                      // Servo header file is needed to control the servo motor.
Servo servo1;                           // Create servo object to allow us to control the servo motor.
                                        
float tempC;                            // create variable to store the temperature in.
int tempPin = 0;                        // Attach vout to analog pin 0.
int led = 13;                           // attach led to pin 13.
int fan1 = 3;                           // attach base of transistor to digital pin 3.
int pos = 0;                            // create variable to store the position of the servo motor.

void setup()                            // Will execute once at the start of the code.
{
  Serial.begin(9600);                   // opens serial port, sets data rate to 9600 bps
  pinMode (led, OUTPUT);                // sets the led pin 13 up as an output.
  pinMode (fan1, OUTPUT);               // sets the fan1 pin 3 up as an output.
  servo1.attach(5);                     // attaches the servo motor to digital pin 5.
}

void loop()                             // code here will continue to replay nutil powered off.
{
  tempC = analogRead(tempPin);          // read the analog value from the lm35 sensor.
  tempC = (5.0 * tempC * 100.0)/1024.0; // convert the analog input to temperature in centigrade.
  Serial.print((byte)tempC);            // send the data to the computer.

    if (tempC > 24)                     // creates bool expression for analyzation. if it evaluates to true,
    {                                   // the body of the if statement will execute.
      pos = 180;                        // sets pos equal to 180.
      digitalWrite (led, HIGH);         // turns on led.
      digitalWrite (fan1, HIGH);        // turns on fan1.
      servo1.write(pos);                // turns servo to 180 degrees.
    }
    else                                // if the if equation evaluates to false the else statement will execute.
    {
      pos = 90;                         // sets pos equal to 90.
      digitalWrite (led, LOW);          // turns off led.
      digitalWrite (fan1, LOW);         // turns off fan1.
      servo1.write(pos);                // turns servo to 90 degrees.
    }
  delay(3000);                          // wait 3 seconds before redoing the loop.
}



Processing Code:

//import Serial communication library
import processing.serial.*;

//init variables
Serial commPort;
float tempC;
float tempF;
int yDist;
PFont font12;
PFont font24;
float[] tempHistory = new float[100];

void setup()
{
  //setup fonts for use throughout the application
  font12 = loadFont("Verdana-12.vlw"); 
  font24 = loadFont("Verdana-24.vlw"); 
  
  //set the size of the window
  size(210, 200);
  
  //init serial communication port
  commPort = new Serial(this, "COM5", 9600);
  
  //fill tempHistory with default temps
  for(int index = 0; index<100; index++)
    tempHistory[index] = 0;
}

void draw()
{
  //get the temp from the serial port
  while (commPort.available() > 0) 
  {
    tempC = commPort.read();
  
    //refresh the background to clear old data
    background(123);

    //draw the temp rectangle
    colorMode(RGB, 160);  //use color mode sized for fading
    stroke (0);
    rect (49,19,22,162);
    //fade red and blue within the rectangle
    for (int colorIndex = 0; colorIndex <= 160; colorIndex++) 
    {
      stroke(160 - colorIndex, 0, colorIndex);
      line(50, colorIndex + 20, 70, colorIndex + 20);
    }
    
    //draw graph
    stroke(0);
    fill(255,255,255);
    rect(90,80,100,100);
    for (int index = 0; index<100; index++)
    {  
      if(index == 99)
        tempHistory[index] = tempC;
      else
        tempHistory[index] = tempHistory[index + 1];
      point(90 + index, 180 - tempHistory[index]); 
    }
  
    //write reference values
    fill(0,0,0);
    textFont(font12); 
    textAlign(RIGHT);
    text("212 F", 45, 25); 
    text("32 F", 45, 187);
  
    //draw triangle pointer
    yDist = int(160 - (160 * (tempC * 0.01)));
    stroke(0);
    triangle(75, yDist + 20, 85, yDist + 15, 85, yDist + 25);
  
    //write the temp in C and F
    fill(0,0,0);
    textFont(font24); 
    textAlign(LEFT);
    tempC = 5*tempC*100/1024;
    text(str(int(tempC)) + " C", 115, 37);
    text(str(int(tempC*1.8+32)) + " F", 115, 65);
  }
}