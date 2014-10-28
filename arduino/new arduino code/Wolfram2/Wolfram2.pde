/**
 * Wolfram Cellular Automata
 * by Daniel Shiffman.  
 * 
 * Simple demonstration of a Wolfram 1-dimensional cellular automata
 * When the system reaches bottom of the window, it restarts with a new ruleset
 * Mouse click restarts as well. 
 */
 
CA ca;   // An instance object to describe the Wolfram basic Cellular Automata

void setup() {
  size(1680, 1050);
  width=1680;
  height=1050;
  int[] ruleset = {0,0,1,0,0,0,1,0,2};    // An initial rule system
  ca = new CA(ruleset);                 // Initialize CA
  background(0);
}

void draw() {
  ca.render();    // Draw the CA
  ca.generate();  // Generate the next level
  
  if (ca.finished()) {   // If we're done, clear the screen, pick a new ruleset and restart
    background(0);
    ca.randomize();
    ca.restart();
  }
}

void mousePressed() {
  background(0);
  ca.randomize();


  ca.restart();
  println("Name: " + ca);
  text("Press r to stop recording.", 5, height-24);
  
}



