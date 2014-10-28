/*

	LEDCapacitance as per:
	MITSUBISHI ELECTRIC RESEARCH LABORATORIES:
	Very Low-Cost Sensing and Communication	Using Bidirectional LEDs
	by Paul Dietz, William Yerazunis, Darren Leigh
	TR2003-35 July 2003	

	ATmega328 powered Arduinos only
	Copyright (C) 2011 Didier Longueville

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

#define CATHODE_PIN PINB0
#define ANODE_PIN PINB1
#define LED_PIN PINB5

void setup()
{  
	/* Initialize serial comm port */
	Serial.begin(115200); 
	/* Set output ports */
	DDRB |= (1 << LED_PIN);
	blinkLed(3);
};

void loop() 
{
	/* Print elapsed time during discharge cycle */
	Serial.print("Elapsed time: ");
	Serial.print(dischargeTime(), DEC);
	Serial.print(" us");
	Serial.println();
	delay(1000); /* Pause */
};

uint32_t dischargeTime(void) 
{
	/* Mark Event */
	PORTB |= (1 << LED_PIN); 
	/* Turn LED off: reverse polarity, charge capacitor */
	DDRB |= ((1 << CATHODE_PIN) | (1 << ANODE_PIN)); /* Set Anode abd Cathode pin in output mode */
	PORTB |= (1 << CATHODE_PIN); /* Cathode to VCC */
	PORTB &= ~(1 << ANODE_PIN); /* Anode to Ground */
	/* Set input port for Cathode */
	DDRB &= ~(1 << CATHODE_PIN); /* Set Cathode pin in input mode */
	PORTB &= ~(1 << CATHODE_PIN); /* Set Cathode pin in high Z mode */
	uint32_t start = micros();
	/* Wait for the cathode pin to reach the low level */
	while (((PINB >> CATHODE_PIN) & 0x01) == 0x01);
	uint32_t stop = micros();
	/* Mark Event */
	PORTB &= ~(1 << LED_PIN); 
	/* Compute elapsed time */
	uint32_t elapsedTime = (stop - start);
	return(elapsedTime);
};

void blinkLed(uint16_t cycles) 
/* Blink control led */
{
	/* Make the led pin an output pin */
	PORTB &= ~(1 << LED_PIN); /* Turn control led off */
	for (uint8_t i = 0; i < (cycles << 1); i++)	{
		delay(200);
		PORTB ^= (1 << LED_PIN);
	}
};
