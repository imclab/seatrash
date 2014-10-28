/* ----------------------------------------------------------------------
 * MIDI - Notes on/off etc
 */

#define midiChannel 1

// Send a MIDI note-on message.  Like pressing a piano key
void noteOn(byte channel, byte note, byte velocity) {
  midiMsg( (0x90 | (channel<<4)), note, velocity);
}

// Send a MIDI note-off message.  Like releasing a piano key
void noteOff(byte channel, byte note) {
  midiMsg( (0x90 | (channel<<4)), note, 0);
}

// Send a general MIDI message
void midiMsg(byte cmd, byte data1, byte data2) {
#ifdef DEBUG
  Serial.print("Command = ");
  Serial.print(cmd, HEX);
  Serial.print(", Data1 = ");
  Serial.print(data1, DEC);
  Serial.print(", Data2 = ");
  Serial.print(data2, DEC);
  Serial.println();
#else
  Serial.print(cmd, BYTE);
  Serial.print(data1, BYTE);
  Serial.print(data2, BYTE);
#endif
}
