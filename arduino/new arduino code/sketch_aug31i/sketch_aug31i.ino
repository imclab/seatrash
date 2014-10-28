// Extracted from http://hack4life.pbworks.com/Arduino%20Solar%20Water%20Heater%20Sensor

const int inPin = 22; 

 

void setup() {

  pinMode(inPin, INPUT);

  Serial.begin(9600);

}

 

#define TIMEOUT 50000

#define MARK_HEADER 7000

#define SPACE_HEADER 3000

#define MARK 500

#define SPACE_ONE 1500

#define SPACE_ZERO 600

 

int expectPulse(int val){

  unsigned long t=micros();

  while(digitalRead(inPin)==val){

    if( (micros()-t)>TIMEOUT ) return 0;

  }

  return micros()-t;

}

 

// temp in celsious and level goes from 0 to 3

bool readTempNLevelSensor(char inPin, char &temp, char &level){

   byte data[5]={0,0,0,0,0};

   unsigned long val1;

   unsigned long st=micros();

   val1 = expectPulse(HIGH);

   if(val1>MARK_HEADER){

     val1 = expectPulse(LOW);

     if(val1>SPACE_HEADER){

       int c=39;

       for(;c>-1;c--){

         val1 = expectPulse(HIGH);

         if(val1<MARK){

          val1 = expectPulse(LOW);

          if(val1==0){

            //Serial.println("Mark error 0");

            break; 

          }

          if(val1<SPACE_ZERO){

            //0

            //data[c>>3]|=(1<<(c & B111));

          }else if(val1<SPACE_ONE){

            //1

            data[c>>3]|=(1<<(c & B111));

          }else{

           //Serial.print(val1);Serial.println(" Space error");

           break; 

          }

         }else{

          //Serial.println("Mark error");

          break; 

         }  

       }

       // Each reading should not take more than 70ms (use time to detect errors)

       if(micros()-st<70000){

         temp=data[3];

         level=data[2];

         //Serial.print(data[3]);Serial.print(" ");Serial.println((data[2]));

         //Serial.print(data[4],HEX);Serial.print(" ");Serial.print(data[3],HEX);Serial.print(" ");Serial.print(data[2],HEX);Serial.print(" ");Serial.print(data[1],HEX);Serial.print(" ");Serial.println(data[0],HEX);

         return true;

       }

    }

   }  

   return false;

}

 

void loop() {

  char temp,level;

  if(readTempNLevelSensor(inPin, temp, level)){

    Serial.print(temp,DEC);Serial.print("c ");Serial.println(level,DEC);

  }

}
