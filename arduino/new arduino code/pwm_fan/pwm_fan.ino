 int ldr = 0;
   ldr = analogRead(0)/4;


  // if light level is room light, turn the fan speed higher

  if ( ldr < 125 && ldr > 40 ) {
    ldr = ldr + 50;
  }


  // if value is less than 40, do not switch the fan ON

  if ( ldr < 40 ) {
    ldr = 0; 
   }
  
  // else run the fan speed according to light level up to 255


  // send PWM value to TIP-122 base pin
  analogWrite(9,ldr);
  delay(500);
