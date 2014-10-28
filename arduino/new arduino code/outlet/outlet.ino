/*
  Web Server Demo
  thrown together by Randy Sarafan

Allows you to turn on and off an LED by entering different urls.

To turn it on:
http://your-IP-address/$1

To turn it off:
http://your-IP-address/$2

Circuit:
* Ethernet shield attached to pins 10, 11, 12, 13
* Connect an LED to pin D2 and put it in series with a 220 ohm resistor to ground

Based almost entirely upon Web Server by Tom Igoe and David Mellis

Edit history:
created 18 Dec 2009
by David A. Mellis
modified 4 Sep 2010
by Tom Igoe

*/

#include <SPI.h>
#include <Ethernet.h>

boolean incoming = 0;

// Enter a MAC address and IP address for your controller below.
// The IP address will be dependent on your local network:
byte mac[] = { 0x00, 0xAA, 0xBB, 0xCC, 0xDA, 0x02 };
IPAddress ip(192,168,1,111); //<<< ENTER YOUR IP ADDRESS HERE!!!

// Initialize the Ethernet server library
// with the IP address and port you want to use
// (port 80 is default for HTTP):
EthernetServer server(80);

void setup()
{
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT); 

  // start the Ethernet connection and the server:
  Ethernet.begin(mac, ip);
  server.begin();
  Serial.begin(9600);
}

void loop()
{
  // listen for incoming clients
  EthernetClient client = server.available();
  if (client) {
    // an http request ends with a blank line
    boolean currentLineIsBlank = true;
    while (client.connected()) {
      if (client.available()) {
        char c = client.read();
        // if you've gotten to the end of the line (received a newline
        // character) and the line is blank, the http request has ended,
        // so you can send a reply
       
        //reads URL string from $ to first blank space
        if(incoming && c == ' '){
          incoming = 0;
        }
        if(c == '$'){
          incoming = 1;
        }
       
        //Checks for the URL string $1 or $2
        if(incoming == 1){
          Serial.println(c);
         
          if(c == '1'){
            Serial.println("ON");
            digitalWrite(2, HIGH);
          }
          if(c == '2'){
            Serial.println("OFF");
            digitalWrite(2, LOW);
          }
          if(c == '3'){
            Serial.println("ON");
            digitalWrite(3, HIGH);
          }
            if(c == '4'){
            Serial.println("OFF");
            digitalWrite(3, LOW);
          }       
          if(c == '5'){
            Serial.println("ON");
            digitalWrite(4, HIGH);
          }         
          if(c == '6'){
            Serial.println("OFF");
            digitalWrite(4, LOW);
          }         
          if(c == '7'){
            Serial.println("ON");
            digitalWrite(5, HIGH);
          }         
          if(c == '8'){
            Serial.println("OFF");
            digitalWrite(5, LOW);
          }         
          if(c == '9'){
            Serial.println("ON");
            digitalWrite(6, HIGH);
          }         
          if(c == '0'){
            Serial.println("OFF");
            digitalWrite(6, LOW);
          }         
          if(c == 'A'){
            Serial.println("ON");
            digitalWrite(7, HIGH);
          }         
          if(c == 'B'){
            Serial.println("OFF");
            digitalWrite(7, LOW);
          }                   
          if(c == 'C'){
            Serial.println("ON");
            digitalWrite(8, HIGH);
          }         
          if(c == 'D'){
            Serial.println("OFF");
            digitalWrite(8, LOW);
          }                   
          if(c == 'E'){
            Serial.println("ON");
            digitalWrite(9, HIGH);
          }         
          if(c == 'F'){
            Serial.println("OFF");
            digitalWrite(9, LOW);
          }                   
         
        }

        if (c == '\n') {
          // you're starting a new line
          currentLineIsBlank = true;
        }
        else if (c != '\r') {
          // you've gotten a character on the current line
          currentLineIsBlank = false;
        }
      }
    }
    // give the web browser time to receive the data
    delay(1);
    // close the connection:
    client.stop();
  }
}
