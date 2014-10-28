
/* Edge Finder - Percentage Value Return
 * Jeff Gray - 2008
 * ----------------
 * Auto-sets edge limits on a sensor and returns
 * sensor data as a percentage between those ends
 */

// set low end high, and high end low, so they 
// have somewhere to go
int syncPin = 12;

int sensorLowEnd = 2000;
int sensorHighEnd = 0;

void setup(){
  Serial.begin(19200);
  Serial.println("Starting");
}
void loop(){
  // read analog value in
  int analogIn = analogRead(0);

  // set the highs and lows
  if(analogIn > sensorHighEnd){
    sensorHighEnd = analogIn;
  }
  if(analogIn < sensorLowEnd){
    sensorLowEnd = analogIn;
  }

  // if high is bigger than lower, edges have been set (or are on their way)
  if(sensorHighEnd > sensorLowEnd){

    // math for creating percentage from edges
    int range = sensorHighEnd - sensorLowEnd;
    int percentage = ((analogIn - sensorLowEnd) * 100) / range;

    // if you want to print out low, high and percentage
    Serial.print("Low: ");
    Serial.print(sensorLowEnd);
    Serial.print(" Percent: ");
    Serial.print(percentage);
    Serial.print(" High: ");
    Serial.println(sensorHighEnd);

    // or just send percentage
    //Serial.println(percentage);
  }

  // with optional button, you can resync the edges
  if(digitalRead(syncPin) == HIGH){
    // set low high, and vice versa
    int sensorLowEnd = 2000;
    int sensorHighEnd = 0;
  }
  delay(50);
}
