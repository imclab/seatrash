///////////////////////////////////////
// Smoothstep Interpolation Example  //
///////////////////////////////////////

// Dan Thompson 2009
//
// Inpired by the code and chat on this site.
// http://sol.gfxile.net/interpolation/index.html
//
// Use this code at your own risk.
//
// This sketch was written with motion controlled timelapse photography
// in mind. I have tried to make it generic enough to understand the smoothstep
// concept so that one might adapt this powerful formula in other areas as well.
//
// For the full tutorial visit http://danthompsonsblog.blogspot.com/
//
// Usage:
// 1. Upload the sketch to the Arduino.
// 2. Click on the Serial monitor to see some visual feed back of the SMOOTHSTEP function.
// 3. Scroll throught the print out to see the SMOOTHSTEP curve.
// 4. Play with the code and addapt it to your needs! ;)

#define SMOOTHSTEP(x) ((x) * (x) * (3 - 2 * (x))) //SMOOTHSTEP expression.

int j = 0;             //Just an Iterator.
int i = 0;             //Just another Iterator.
float A = 0.0;         //Input Min Value
float B = 100.0;       //Input Max Value
float N = 100.0;       //Input number of steps for transition
float X;               //final smoothstepped value
float v;               //smoothstep expression variable

void setup() {
Serial.begin(9600);  //establish serial connection for debugging
}

void loop()
{
  if (j < N)                      // Keep looping until we hit the pre-defined max number
                                  // of steps
  {
    v = j / N;                    // Iteration divided by the number of steps.
    v = SMOOTHSTEP(v);            // Run the smoothstep expression on v.
    X = (B * v) + (A * (1 - v));  // Run the linear interpolation expression using the current
                                  //smoothstep result.
    for ( i=0; i < X ; i++)       // This loop could the relevant code for each time your
                                  //motor steps.
    {
      Serial.print("1");          //Prints the number "1" for each step.          
    }
    Serial.print("  ");           //Puts a space between each line of steps and their
                                  //corresponding  float value
    Serial.println(X);            // prints the soothstepped value
    Serial.println("CLICK!!!");   // this could be where you trigger your timelapse shutter
    j++;                          // Increments j by 1.
  }
}
