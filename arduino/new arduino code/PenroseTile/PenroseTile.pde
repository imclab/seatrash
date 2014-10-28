/** 
 * Penrose Tile L-System 
 * by Geraldine Sarmiento.
 *  
 * This code was based on Patrick Dwyer's L-System class. 
 */

PenroseLSystem ds;

void setup() {
  size(1680, 1050);
  ds = new PenroseLSystem();
  ds.simulate(6);
}

void draw() {
  background(0);
  ds.render();
}






