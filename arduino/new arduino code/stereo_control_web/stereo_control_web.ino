void processSerialCode() {
  if (Serial.available() < 9) return;
  char type = Serial.read();
  unsigned long code = 0;
  // Read 8 hex characters into code (omitted)
  if (type == 'N') {
    irsend.sendNEC(code, 32);
  } 
  else if (type == 'S') {
    // Send Sony code 3 times
    irsend.sendSony(code, 12);
    delay(50);
    irsend.sendSony(code, 12);
    delay(50);
    irsend.sendSony(code, 12);
  }
  // More code for RC5 and RC6
}
