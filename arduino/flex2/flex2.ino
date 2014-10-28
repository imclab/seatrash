import processing.serial.*;

Serial myPort; // The serial port

PFont font;

// initial variables:

int i = 1; // counter

int inByte = -1; // data from serial port

void setup () {

size(400, 350); // window size

font = loadFont("ArialMT-72.vlw");

// List all the available serial ports

println(Serial.list());

// I know that the third port in the serial list on my mac // is always my Keyspan adaptor, so I open Serial.list()[2]. // Open whatever port is the one you're using.

myPort = new Serial(this, Serial.list()[0], 9600);

// set inital background:

background(255); }

void draw () {

if (myPort.available() > 0) {

inByte = myPort.read();

serialEvent();

}

}

void serialEvent () {

// draw the line:

stroke(0,0,255);

line(i, height, i, height - inByte);

textFont(font, 72);

fill(255);

stroke(255);

rect(0, 0, width, 70);

fill(0);

text(inByte, 125, 60);

// at the edge of the screen, go back to the beginning:

if (i >= width) {

i = 0;

background(255);

}

else {

i++;

} } 
