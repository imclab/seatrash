/* Stage 8: Simple Arduino Serial Random Number Generator
Written by ScottC on 09/07/2012
http://arduinobasics.blogspot.com/
*/

  void setup(){
    Serial.begin(9600);      //Begin Serial Communication
  }

  void loop(){
    Serial.println(random(1,1000)); //Send Random # to computer
    delay(100);                    //Delay 100ms between values.
  }
