//    Email client sketch for IDE v1.0.3 and Ethernet Shield
//    Posted December 2012 by SurferTim
//    Modified 17 March 2013 for WiFi Shield by
//    MisterResistor and SurferTim


/*  THIS ONE WORKS!  Output below is from Serial Monitor
    Ready. Press 'e' to send.
connected
220 mail.yourmailserver.com ESMTP Sendmail 8.13.6/8.13.1; Sun, 17 Mar 2013 12:59:58 +0000
Sending helo
250 mail.yourmailserver.com Hello [38.123.84.242], pleased to meet you
Sending From
250 2.1.0 <me@mine.com>... Sender ok
Sending To
250 2.1.5 <you@mine.com>... Recipient ok
Sending DATA
354 Enter mail, end with "." on a line by itself
Sending email
250 2.0.0 r2HCxwgc027560 Message accepted for delivery
Sending QUIT
221 2.0.0 mail.yourmailserver.com closing connection
disconnected
Email sent


*/
/******************************************************/

#include <SPI.h>
#include <WiFi.h>

// Setup on a 128 bit WEP network, change to suit for WPA

char ssid[] = "MONKEY";      //  your network SSID (name)
char pass[] = "C329888B2B00225566778899AA";   // your network password
int keyIndex = 1;    // your network key Index number (needed only for WEP)

IPAddress ip( 192, 168, 1, 12 );    // ipaddress obtained from access point
IPAddress gateway( 192, 168, 1, 1 );
IPAddress subnet( 255, 255, 255, 0 );

char server[] = "mail.yourmailserver.com";  // smtp mail server  (mine.com)

int status = WL_IDLE_STATUS;

WiFiClient client;

void setup()
 {
 Serial.begin(9600);
 pinMode(9,OUTPUT);          // changed to use onboard LED
 digitalWrite(9,HIGH);
 WiFi.begin(ssid, keyIndex, pass);
 delay(2000);
 Serial.println("Ready. Press 'e' to send.");
 }

void loop()
 {
   byte inChar;
   inChar = Serial.read();

  if(inChar == 'e')
   {
       if(sendEmail()) Serial.println("Email sent");    
       else Serial.println("Email failed");
   }      
 }

byte sendEmail()
 {
   byte thisByte = 0;
   byte respCode;

  if(client.connect(server,25)) {
     Serial.println("connected");
   } else {
     Serial.println("connection failed");
     return 0;
   }

  if(!eRcv()) return 0;
   Serial.println("Sending helo");

// change to your public ip
   client.write("helo 1.2.3.4\r\n");

  if(!eRcv()) return 0;
   Serial.println("Sending From");

// change to your email address (sender)
   client.write("MAIL From: <me@mine.com>\r\n");

  if(!eRcv()) return 0;

// change to recipient address
   Serial.println("Sending To");
   client.write("RCPT To: <you@mine.com>\r\n");

  if(!eRcv()) return 0;

  Serial.println("Sending DATA");
   client.write("DATA\r\n");

  if(!eRcv()) return 0;

  Serial.println("Sending email");

// change to recipient address
   client.write("To: You <you@mine.com>\r\n");

// change to your address
   client.write("From: Me <me@mine.com>\r\n");

  client.write("Subject: Arduino email test\r\n");
  client.write("This is from my Arduino WiFi shield!\r\n");
  client.write(".\r\n");

  if(!eRcv()) return 0;

  Serial.println("Sending QUIT");
  client.write("QUIT\r\n");

  if(!eRcv()) return 0;

  client.stop();

  Serial.println("disconnected");

  return 1;
 }

byte eRcv()
{
  byte respCode;
  byte thisByte;
  int loopCount = 0;

  while(!client.available()) {
    delay(1);
    loopCount++;

    // if nothing received for 10 seconds, timeout
    if(loopCount > 10000) {
      client.stop();
      Serial.println("\r\nTimeout");
      return 0;
    }
  }

  respCode = client.peek();

  while(client.available())
   {  
     thisByte = client.read();    
     Serial.write(thisByte);
   }

  if(respCode >= '4')
   {
     efail();
     return 0;  
   }

  return 1;
 }

void efail()
{
  byte thisByte = 0;
  int loopCount = 0;

  client.write("QUIT\r\n");

  while(!client.available()) {
    delay(1);
    loopCount++;

    // if nothing received for 10 seconds, timeout
    if(loopCount > 10000) {
      client.stop();
      Serial.println("\r\nTimeout");
      return;
    }
  }

  while(client.available())
  {  
    thisByte = client.read();    
    Serial.write(thisByte);
  }

  client.stop();

  Serial.println("disconnected");
}
