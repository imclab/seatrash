 /* get a reading from the mouse */
  mouse.write(0xeb);  // give me data!
  mouse.read();      // ignore ack
  mstat = mouse.read();
  mx = mouse.read();
  my = mouse.read();

  // Current values - keep within Maximums (using factors)
  if (mx != 0) {
    currentX += mx;
    if (currentX < 0) { currentX = 0; }
    if (currentX > (maxNote * factorNote)) { currentX = maxNote * factorNote; }
    currentNote = currentX / factorNote;
  }
  if (my != 0) {
    currentY += my;
    if (currentY < 0) { currentY = 0; }
    if (currentY > (maxVol * factorVol)) { currentY = maxVol * factorVol; }
    currentVol = currentY / factorVol;
  }
  
    // Turn off last note (if it has changed)
    if (currentNote != lastNote) {
      infoSet(3);  // XXX Demonstration - 3 flashes each time note change
      noteOff(midiChannel, lastNote + offsetNote);
      lastNote = currentNote;
      lastVol = currentVol;
      // Turn on new note - this may not be required if no change !
      noteOn(midiChannel, currentNote + offsetNote, currentVol + offsetVol);
    }
