#include <Wire.h>
#include <Servo.h> 

int gyroResult[3], accelResult[3];        //Store raw sensor output
int loopsPerServoUpdate = 2;              //Update servos once every loopsPerServoUpdate loops
int loopCounter = 0;                      //Used for driving servos once every loopsPerServoUpdate loops
float timeStep = 0.01;                    //Main loop should run at 1/timeStep Hz
float biasGyroX, biasGyroY, biasGyroZ;    //Bias values
float biasAccelX, biasAccelY, biasAccelZ; //for bias corrections
float gyroX, gyroY, gyroZ;                //Values after bias
float accelX, accelY, accelZ;             //correction in degrees
float pitchGyro = 0;                      //Pitch according to gyro 
float pitchAccel = 0;                     //Pitch according to accelerometers
float pitchPrediction = 0;                //Output of Kalman filter
float rollGyro = 0;                       //Roll according to gyro
float rollAccel = 0;                      //Roll according to accelerometers
float rollPrediction = 0;                 //Output of Kalman filter
float giroVar = 0.1;                      //Was 0.1
float deltaGiroVar = 0.1;                 //Was 0.1
float accelVar = 5;                       //Was 5
float Pxx = 0.1;                          //Angle variance; was 0.1
float Pvv = 0.1;                          //Angle change rate variance; was 0.1
float Pxv = 0.1;                          //Angle and angle change rate covariance; was 0.1
float kx, kv;                             //Mysterious Kalman thingies
const int FIRArrayLength = 36;            //Number of taps for low pass FIR filter
float accelXFIRArray[FIRArrayLength];     //Array for FIR calculations
float accelYFIRArray[FIRArrayLength];     //Array for FIR calculations
float accelZFIRArray[FIRArrayLength];     //Array for FIR calculations
float gyroXFIRArray[FIRArrayLength];      //Array for FIR calculations
float gyroYFIRArray[FIRArrayLength];      //Array for FIR calculations
float FIRFilter[FIRArrayLength] = {       //FIR filter coefficients for: 0-4Hz: gain 5, ripple 12dB; 10-50Hz: gain 0.000001, ripple 72dB; http://t-filter.appspot.com
  0.00008103385604967716,
  0.00027111799242077064,
  0.0006854974917591413,
  0.0014576515867607135,
  0.0027530631363864716,
  0.004753901748829375,
  0.007635997857285217,
  0.011541206789928664,
  0.016544708776664904,
  0.022626620444902264,
  0.02964895502860427,
  0.03734831257674501,
  0.045342366754130024,
  0.053157699234441635,
  0.060270435821884946,
  0.06616236694645264,
  0.0703764023237606,
  0.07257493449372505,
  0.07257493449372505,
  0.0703764023237606,
  0.06616236694645264,
  0.060270435821884946,
  0.053157699234441635,
  0.045342366754130024,
  0.03734831257674501,
  0.02964895502860427,
  0.022626620444902264,
  0.016544708776664904,
  0.011541206789928664,
  0.007635997857285217,
  0.004753901748829375,
  0.0027530631363864716,
  0.0014576515867607135,
  0.0006854974917591413,
  0.00027111799242077064,
  0.00008103385604967716
};
const int zeros = 10;
const int poles = 10;
float accelXInput[zeros + 1], accelXOutput[poles + 1];
float accelYInput[zeros + 1], accelYOutput[poles + 1];
float accelZInput[zeros + 1], accelZOutput[poles + 1];
float gyroXInput[zeros + 1], gyroXOutput[poles + 1];
float gyroYInput[zeros + 1], gyroYOutput[poles + 1];
float minServoAngle = 50;                 //Limits to the throw
float maxServoAngle = 130;                //of the servo arms
unsigned long timer;                      //Timer for calibrating loop time to timeStep seconds.
Servo leftServo, rightServo, throttleServo, rudderServo;
float pFactor = 1.5;                      //Multiplier between angle errors and servo signals
float leftCalc, rightCalc, leftServoSignal, rightServoSignal; 

//Function for writing a byte to an I2C device
void writeTo(byte device, byte toAddress, byte val) {
  Wire.beginTransmission(device);  
  Wire.send(toAddress);        
  Wire.send(val);        
  Wire.endTransmission();
}

//Function for reading num bytes from an I2C device
void readFrom(byte device, byte fromAddress, int num, byte result[]) {
  Wire.beginTransmission(device);
  Wire.send(fromAddress);
  Wire.endTransmission();
  Wire.requestFrom((int)device, num);
  int i = 0;
  while(Wire.available()) {
    result[i] = Wire.receive();
    i++;
  }
}

//Function for reading gyroscopes
void getGyroscopeReadings(int gyroResult[]) {
  byte buffer[6];
  readFrom(0x68,0x1D,6,buffer);
  gyroResult[0] = (((int)buffer[0]) << 8 ) | buffer[1];
  gyroResult[1] = (((int)buffer[2]) << 8 ) | buffer[3];
  gyroResult[2] = (((int)buffer[4]) << 8 ) | buffer[5];
} 

//Funcion for reading accelerometers
void getAccelerometerReadings(int accelResult[]) {
  byte buffer[6];
  readFrom(0x53,0x32,6,buffer);
  accelResult[0] = (((int)buffer[1]) << 8 ) | buffer[0];
  accelResult[1] = (((int)buffer[3]) << 8 ) | buffer[2];
  accelResult[2] = (((int)buffer[5]) << 8 ) | buffer[4];
}

//FIR filter function
float FIR(float value, float array[]) {
  int i;
  float FIROutput = 0;
  for(i = FIRArrayLength-1; i > 0; i--){
    array[i] = array[i-1];
    FIROutput += array[i] * FIRFilter[i];
  }
  array[0] = value;
  FIROutput += array[0] * FIRFilter[0];
  return FIROutput;
}

//IIR filter function (Low pass Bessel, 5Hz corner freq., 10th order, 100 Hz sample rate; http://www-users.cs.york.ac.uk/~fisher/mkfilter/trad.html)
float IIR(float value, float xv[], float yv[]) {
   xv[0] = xv[1]; xv[1] = xv[2]; xv[2] = xv[3]; xv[3] = xv[4]; xv[4] = xv[5]; xv[5] = xv[6]; xv[6] = xv[7]; xv[7] = xv[8]; xv[8] = xv[9]; xv[9] = xv[10]; 
   xv[10] = value / 5.681713320e+05;
   yv[0] = yv[1]; yv[1] = yv[2]; yv[2] = yv[3]; yv[3] = yv[4]; yv[4] = yv[5]; yv[5] = yv[6]; yv[6] = yv[7]; yv[7] = yv[8]; yv[8] = yv[9]; yv[9] = yv[10]; 
   yv[10] = (xv[0] + xv[10]) + 10 * (xv[1] + xv[9]) + 45 * (xv[2] + xv[8])
            + 120 * (xv[3] + xv[7]) + 210 * (xv[4] + xv[6]) + 252 * xv[5]
            + ( -0.0084477842 * yv[0]) + (  0.1250487070 * yv[1])
            + ( -0.8452516757 * yv[2]) + (  3.4397583115 * yv[3])
            + ( -9.3457158590 * yv[4]) + ( 17.7418428080 * yv[5])
            + (-23.8769055880 * yv[6]) + ( 22.5422166190 * yv[7])
            + (-14.3254341650 * yv[8]) + (  5.5510863543 * yv[9]);
   return yv[10];
}

void setup() {
  //Variables used for removing zero bias
  int totalGyroXValues = 0;
  int totalGyroYValues = 0;
  int totalGyroZValues = 0;
  int totalAccelXValues = 0;
  int totalAccelYValues = 0;
  int totalAccelZValues = 0;
  int i;
  
  //LED on when calibrating
  pinMode(13, OUTPUT);   
  digitalWrite(13, HIGH);
  
  //Hook up the servos to digital pins 2 thru 5
  leftServo.attach(5, 600, 2400);
  rightServo.attach(4, 600, 2400);
  throttleServo.attach(3, 600, 2400);
  rudderServo.attach(2, 600, 2400);
  
  //Configure pins for throttle potmeter
  pinMode(A0, OUTPUT);
  digitalWrite(A0, HIGH);
  pinMode(A1, INPUT);
  pinMode(A2, OUTPUT);
  digitalWrite(A2, LOW);
  
  //Set the servos
  leftServo.write(90);
  rightServo.write(90);
  throttleServo.write(0);
  rudderServo.write(90);
  delay(50);
  
  //Open I2C and serial communications
  Wire.begin(); 
  Serial.begin(115200);
  
  //Apply settings to sensors
  writeTo(0x53,0x31,0x09); //Set accelerometer to 11bit, +/-4g
  writeTo(0x53,0x2D,0x08); //Set accelerometer to measure mode
  writeTo(0x68,0x16,0x1E); //Set gyro to +/-2000deg/sec, 1kHz internal sampling rate and 5Hz low pass filter
  writeTo(0x68,0x15,0x0A); //Set gyro to 100Hz external sample rate
  
  //Collect 50 measurements and calculate bias for sensors
  delay(100);
  for (i = 0; i < 50; i += 1) {
    getGyroscopeReadings(gyroResult);
    getAccelerometerReadings(accelResult);
    totalGyroXValues += gyroResult[0];
    totalGyroYValues += gyroResult[1];
    totalGyroZValues += gyroResult[2];
    totalAccelXValues += accelResult[0];
    totalAccelYValues += accelResult[1];
    totalAccelZValues += accelResult[2];
    delay(50);
  }
  biasGyroX = totalGyroXValues / 50;
  biasGyroY = totalGyroYValues / 50;
  biasGyroZ = totalGyroZValues / 50;
  biasAccelX = totalAccelXValues / 50;
  biasAccelY = totalAccelYValues / 50;
  biasAccelZ = (totalAccelZValues / 50) - 256;
  
  //LED off when done calibrating
  digitalWrite(13, LOW);
}

void loop() {
  //Initialise the loop timer
  timer = millis();
  
  //Set the throttle to the value read from the potmeter
  throttleServo.write(map(analogRead(1), 0, 1023, 0, 179));
  
  //Get the raw sensor data
  getGyroscopeReadings(gyroResult);
  getAccelerometerReadings(accelResult);
  
  //Remove bias from raw sensor data and convert to g and deg/s respectively.
  accelX = (accelResult[0] - biasAccelX) / 256;
  accelY = (accelResult[1] - biasAccelY) / 256;
  accelZ = (accelResult[2] - biasAccelZ) / 256;
  gyroX = (gyroResult[0] - biasGyroX) / 14.375;
  gyroY = (gyroResult[1] - biasGyroY) / 14.375;
  
  //Try to remove the motor and rotor vibrations from the data with a low-pass FIR/IIR filter
  //accelX = FIR(accelX, accelXFIRArray);
  //accelY = FIR(accelY, accelYFIRArray);
  //accelZ = FIR(accelZ, accelZFIRArray);
  //gyroX = FIR(gyroX, gyroXFIRArray);
  //gyroY = FIR(gyroY, gyroYFIRArray);
  accelX = IIR(accelX, accelXInput, accelXOutput);
  accelY = IIR(accelY, accelYInput, accelYOutput);
  accelZ = IIR(accelZ, accelZInput, accelZOutput);
  gyroX = IIR(gyroX, gyroXInput, gyroXOutput);
  gyroY = IIR(gyroY, gyroYInput, gyroYOutput);
  
  //Calculate angles from the sensor data
  pitchAccel = atan2(accelY, accelZ) * 360.0 / (2*PI);
  pitchGyro = pitchGyro + (gyroX * timeStep);
  pitchPrediction = pitchPrediction + (gyroX * timeStep);
  rollAccel = atan2(accelX, accelZ) * 360.0 / (2*PI);
  rollGyro = rollGyro - gyroY * timeStep; 
  rollPrediction = rollPrediction - (gyroY * timeStep);

  //Do the Kalman thing
  Pxx += timeStep * (2 * Pxv + timeStep * Pvv);
  Pxv += timeStep * Pvv;
  Pxx += timeStep * giroVar;
  Pvv += timeStep * deltaGiroVar;
  kx = Pxx * (1 / (Pxx + accelVar));
  kv = Pxv * (1 / (Pxx + accelVar));
  pitchPrediction += (pitchAccel - pitchPrediction) * kx;
  rollPrediction += (rollAccel - rollPrediction) * kx;
  Pxx *= (1 - kx);
  Pxv *= (1 - kx);
  Pvv -= kv * Pxv;
  
  //Use the Kalman output in a controller, limiting the maximum servo arms throw
  leftCalc = pitchPrediction - rollPrediction;
  rightCalc = pitchPrediction + rollPrediction;
  leftServoSignal = 90.0 - (pFactor * leftCalc);
  rightServoSignal = 90.0 + (pFactor * rightCalc);
  if (leftServoSignal > maxServoAngle) {leftServoSignal = maxServoAngle;};
  if (leftServoSignal < minServoAngle) {leftServoSignal = minServoAngle;};
  if (rightServoSignal > maxServoAngle) {rightServoSignal = maxServoAngle;};
  if (rightServoSignal < minServoAngle) {rightServoSignal = minServoAngle;};
  
  //Update the servo signal every loopsPerServoUpdate loops, aiming for once every 20ms
  if (++loopCounter >= loopsPerServoUpdate) { 
    leftServo.write((int)round(leftServoSignal));
    rightServo.write((int)round(rightServoSignal));
    loopCounter = 0;
  }

  //Make the loop last timeStep seconds
  timer = millis() - timer;
  timer = (int)(round(timeStep * 1000)) - timer; 
  delay(timer);
}
