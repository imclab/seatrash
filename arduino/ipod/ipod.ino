
import processing.serial.*;

Serial ipod;
int buttonRelease[] = {
0xFF, 0x55, 0x03, 0x02, 0x00, 0x00,0xFB };

void setup() {
String[] serialPorts = Serial.list();
println(serialPorts);

ipod = new Serial(this, serialPorts[0], 19200);
}

void draw() {
background(0);
}

void keyReleased() {

switch (key) {
case 'f': // forward
sendCommand(0x08);
break;
case 'p': // play/pause
sendCommand(0x01);
break;
case 'b': // backward
sendCommand(0x10);
break;
case 'u': // vol up
sendCommand(0x02);
break;
case 'd': // vol down
sendCommand(0x04);
break;
case 'n': // next album
sendCommand(0x20);
break;
case 'v': // previous album
sendCommand(0x40);
break;
case 's': // next album
sendCommand(0x80);
break;
}
}


int checkSum(int len, int mode, int command1, int command2, int
parameter) {
int checksum = 0x100 - ((len + mode + command1 + command2+parameter) & 0xFF);
return checksum;
}
void serialEvent(Serial ipod) {
char inByte = char(ipod.read());
print(inByte);
}



void sendCommand(int cmd) {
int cs = checkSum(0x03, 0x02, 0x00, cmd, 0);
println(hex(cs));


int bytes[] = {
0xFF, 0x55, 0x03, 0x02, 0x00, cmd, cs };
for (int i = 0; i < bytes.length; i++) {
ipod.write(bytes[i]);
}
for (int i = 0; i < buttonRelease.length; i++) {
ipod.write(buttonRelease[i]);
}
} 
