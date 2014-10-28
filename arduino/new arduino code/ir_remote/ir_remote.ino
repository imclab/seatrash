#define LEDPIN 13
void blink() {
  digitalWrite(LEDPIN, HIGH);
  delay(200);
  digitalWrite(LEDPIN, LOW);
  delay(200);
}  

void loop() {
  if (irrecv.decode(&results)) {
    unsigned long hash = decodeHash(&results);
    switch (hash) {
    case 0x322ddc47: // 0 (10)
      blink(); // fallthrough
    case 0xdb78c103: // 9
      blink();
    case 0xab57dd3b: // 8
      blink();
    case 0x715cc13f: // 7
      blink();
    case 0xdc685a5f: // 6
      blink();
    case 0x85b33f1b: // 5
      blink();
    case 0x4ff51b3f: // 4
      blink();
    case 0x15f9ff43: // 3
      blink();
    case 0x2e81ea9b: // 2
      blink();
    case 0x260a8662: // 1
      blink();
      break;
    default:
      Serial.print("Unknown ");
      Serial.println(hash, HEX);    
    }
    irrecv.resume(); // Resume decoding (necessary!)
  }
}
