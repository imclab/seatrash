/*
luckylarry.co.uk
3D Scan Visualisation for Sharp GP2Y0A02
Maps out an area of what the GP2Y0A02 sees into a 3D view
*/
import processing.serial.*;     // import serial library
Serial myPort;                  // declare a serial port
int x, y, z;                     // variable to store x and y co-ordinates for vertices
int value = 0;                  // value from sensor
int[][][] data = new int[181][61][1];  // create an array to store each new sensor value for each servo position
int count;
int average = 1;
PFont myFont;                   // setup fonts in Processing
int numberOfSegments = 179;
createArc Arc;                  // create an instance of the Arc class
float radius = 150;
float angle = 0;
 
void setup(){
  size(640, 360, P3D);
  Arc = new createArc();        // assign the Arc classes to an object
  myFont = createFont("verdana", 12);
  textFont(myFont);
  // setup the serial port and buffer
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.bufferUntil('\n');
 
}
 
void draw(){
  background(255);
  float tempX = 0, tempY = 1, tempZ = 0;
  fill(200);
  lights();
  translate(width/2, 200, 110);
  angle = 180.0 / numberOfSegments;
  rotateY(count * PI/10800);
  for (int j = 0; j < numberOfSegments; j++){
      tempZ = cos(radians(angle))*radius;
      tempX = sin(radians(angle))*radius;
      pushMatrix();
      translate(tempX, tempY, tempZ); // move each instance we create of the arc object to a slightly new position and rotation
      rotateY(radians(angle));
      Arc.create(j);
      popMatrix();
      angle += 180.0/numberOfSegments;
  }
 
}
// creates an arc object using QUAD_STRIP
class createArc {
// pass values to create method to know which array to load 1 to 180...
  void create(int degree){
    pushMatrix();
    rotateY(radians(135));
    beginShape(QUAD_STRIP);
    for(int a=60; a < 120;a++) {
      float x1 = cos(radians(((90+a))))*(data[degree][a-60][0]/average);
      float y1 = sin(radians(((90+a))))*(data[degree][a-60][0]/average);
      float x2 = cos(radians(((90+a))))*(data[degree+1][a-60][0]/average);
      float y2 = sin(radians(((90+a))))*(data[degree+1][a-60][0]/average);
      vertex(x1,y1,100);
      vertex(x2,y2,105);
    }
    endShape();
    popMatrix();
  }
} 
 
/* get values from serial port */
 
void serialEvent (Serial myPort) {
  String xString = myPort.readStringUntil('\n');  // read the serial port until a new line
    if (xString != null) {  // if theres data in between the new lines
    	xString = trim(xString); // get rid of any whitespace just in case
    	String getY = xString.substring(1, xString.indexOf("X")); // get the value of the servo position
        String getX = xString.substring(xString.indexOf("X")+1, xString.indexOf("Z")); // get the value of the sensor reading
        String getZ = xString.substring(xString.indexOf("Z")+1, xString.length()); // get the value of the sensor reading
    	x = Integer.parseInt(getX); // set the values to variables
    	y = Integer.parseInt(getY);
        z = Integer.parseInt(getZ);
        data[x][y][0] += z;
        //println(z); // for debugging
        count++;
        if (count > 10800) {
          count = 0;
          average++;
        }
  }
}
