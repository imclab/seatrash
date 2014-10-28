#include <Servo.h> 
 
Servo leftServo, rightServo, throttleServo, rudderServo;
int angle = 90;
int i, val;
 
void setup() { 
  leftServo.attach(5, 600, 2400);
  rightServo.attach(4, 600, 2400);
  throttleServo.attach(3, 600, 2400);
  rudderServo.attach(2, 600, 2400);
  //Make a 0 and a 5V for the potmeter
  pinMode(A0, OUTPUT);
  digitalWrite(A0, HIGH);
  pinMode(A2, OUTPUT);
  digitalWrite(A2, LOW);
  //A1 is where the wiper of the potmeter connects
  pinMode(A1, INPUT);
  //Set swashplate servos to 90 degrees ("arms wide" as in the picture)
  leftServo.write(90);
  rightServo.write(90);
  delay(50);
}
 
void loop() {
  val= analogRead(1);              //Get the potmeter value
  val = map(val, 0, 1023, 0, 179); //Map the potmeter value to 1-179 degrees
  throttleServo.write(val);        //Set the throttle
  rudderServo.write(90);           //Set the rudder to the middle position

  //Workout program for the servos
  for (i = 1; i >= 0; i--) {
    throttleServo.write(val);
    leftServo.write(angle);
    rightServo.write(angle);    
    delay(300);
    leftServo.write(angle+30);   
    rightServo.write(angle-30);  
    delay(300);
    leftServo.write(angle-30);
    rightServo.write(angle+30);    
    delay(300);    
  }
  for (i = 1; i >= 0; i--) {
    throttleServo.write(val);
    leftServo.write(angle);
    rightServo.write(angle);    
    delay(300);
    leftServo.write(angle+30);   
    rightServo.write(angle+30);  
    delay(300);
    leftServo.write(angle-30);
    rightServo.write(angle-30);    
    delay(300);    
  }
  
} 
