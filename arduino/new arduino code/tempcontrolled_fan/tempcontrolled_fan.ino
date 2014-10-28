/*####################################################

02	

Temperature and Humidity control unit by Joseph Dattilo

03	

LICENSE: GPL v3 (http://www.gnu.org/licenses/gpl.html)

04	

 GET UPDATES: https://www.virtuabotix.com

05	

####################################################*/

06	

#include <dht11.h>

07	

 

08	

dht11 DHT11;//change to dht22 DHT22; if using the dht22

09	

//you will also need to change all instances of DHT11 to DHT22

10	

 

11	

byte fanrelaypin = 2;

12	

byte heatrelaypin = 3;

13	

 

14	

void setup()

15	

{

16	

  DHT11.attach(4);//Change

17	

  Serial.begin(9600);

18	

  Serial.println("Virtuabotix DHT11 FAN & Heater CONTROL");

19	

  pinMode(fanrelaypin, OUTPUT);

20	

  digitalWrite(fanrelaypin, LOW);//turn off the relay

21	

  pinMode(heatrelaypin, OUTPUT);

22	

  digitalWrite(heatrelaypin, LOW);//turn off the relay

23	

}

24	

 

25	

void loop()

26	

{

27	

  Serial.println("\n");

28	

 

29	

  int chk = DHT11.read();

30	

 

31	

  Serial.print("Read sensor: ");

32	

  switch (chk)

33	

  {

34	

    case 0: Serial.println("OK"); break;

35	

    case -1: Serial.println("Checksum error"); break;

36	

    case -2: Serial.println("Time out error"); break;

37	

    default: Serial.println("Unknown error"); break;

38	

  }

39	

 

40	

  Serial.print("Humidity (%): ");

41	

  Serial.println((float)DHT11.humidity, DEC);

42	

 

43	

  if(DHT11.humidity > 75)//change % to match your threshold.

44	

  {

45	

    digitalWrite(fanrelaypin, HIGH);//turn on the fan

46	

  }

47	

  else

48	

  {

49	

    digitalWrite(fanrelaypin, LOW);

50	

  }

51	

 

52	

  Serial.print("Temperature (C): ");

53	

  Serial.println(DHT11.temperature, DEC);

54	

 

55	

  if(DHT11.temperature < 30)//change to match your threshold in C.

56	

  {

57	

    digitalWrite(heatrelaypin, HIGH);//turn on the heater

58	

  }

59	

  else

60	

  {

61	

    digitalWrite(heatrelaypin, LOW);

62	

  }

63	

 

64	

  delay(2000);

65	

 

66	

}
