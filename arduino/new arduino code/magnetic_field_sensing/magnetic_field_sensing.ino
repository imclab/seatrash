/*

	MicroELFEMFLED: Extremely Low Frequency Electro Magnetic Field Sensing
	A piece of wire must be attached to analog port 0
	This wire detects the magnetic fields generated by the ambiant AC
	This signal is sampled in scan mode, filtered through a FFT.
	The 50 Hz signal is quantified and transformed in a blinking signal
	The sketch features self tuning of signal strength

	Copyright (C) 2012 Didier Longueville

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

#include <PlainADC.h>
#include <PlainFFT.h>
PlainADC PADC; /* Create ADC object */
PlainFFT FFT; /* Create FFT object */
/* Data acquisition parameters */
const uint16_t _samples = 64;
const double _samplingFrequency = 635.0;
const uint16_t _adcChannel = 0; /* From 0 to 5 on ATmega328 powered Arduinos */
const uint16_t _refVoltage = ADC_REF_VOL_DEFAULT; /* VCC: 5V */
/* Constants */
#define SCL_INDEX 0x00
#define SCL_TIME 0x01
#define SCL_FREQUENCY 0x02
/* Data acquisition vector */
uint8_t *_vBuffer;
/* FFT vectors */
double *_vReal;
double *_vImag;
/* Local variables */
uint8_t _pinCtrlLed = PINB5;
volatile uint8_t *_portCtrlLed = &PORTB;
uint32_t _lastToggleTime = millis();
int16_t _signalStrength = 0;
int16_t _minStrength = 32767;
int16_t _maxStrength = 0;
int16_t _maxInterval = 1000;
int16_t _minInterval = 20;

void setup() 
{ 
	Serial.begin(115200);
	/* Set data acquisition parameters */
	_vBuffer = PADC.SetAcquisitionEngine(_adcChannel, _refVoltage,  _samplingFrequency, _samples, ADC_DAT_FMT_DBL);	
	/* Size imaginary vector */
	_vImag = (double*)malloc(_samples * sizeof(double));
	DDRB |= (1 << _pinCtrlLed);
};

void loop() 
{	
	uint32_t startAcquisition = millis();
	/* Acquire data */
	PADC.GetScanData();
	/* Cast data in a doubles vector */
	_vReal = reinterpret_cast<double*>(_vBuffer);
	/* Print raw data (optional) */
	// PrintVector(_vReal, _samples, SCL_TIME);
	/* Suppress data offset */
	FFT.SuppressOffset(_vReal, _samples);
	/* Clear imaginary vector */
	FFT.ClearVector(_vImag, _samples);
	/* Window data: optional */
	FFT.Windowing(_vReal, _samples, FFT_WIN_TYP_HAMMING, FFT_FORWARD);	
	/* Compute FFT */
	FFT.Compute(_vReal, _vImag, _samples, FFT_FORWARD);	
	/* Compute magnitudes */
	FFT.ComplexToReal(_vReal, _vImag, _samples, FFT_SCL_TYP_AMPLITUDE);
	// PrintVector(_vReal, (_samples >> 1), SCL_FREQUENCY);
	uint32_t acquisitionDuration = (millis() - startAcquisition);
	/* 
	Get data corresponding to the target frequency, 
	based on _samplingFrequency = 1270 and  _samples = 64 
	*/
	_signalStrength = int16_t(*(_vReal + 5)); /* 50 Hz bin */
	// _signalStrength = int16_t(*(_vReal + 6)); /* 60 Hz bin */
	/* Self tuning */
	if (_signalStrength < _minStrength) {
		_minStrength = _signalStrength;
	} 
	if (_signalStrength > _maxStrength) {
		_maxStrength = _signalStrength;	
	}	
	double normalizedSignalStrength = double(_signalStrength - _minStrength) / (_maxStrength - _minStrength);
	// Serial.println((normalizedSignalStrength * 100.0), 1);
	/* Timing */
	uint16_t interval = acquisitionDuration + ((_maxInterval - _minInterval) * (1.0 - normalizedSignalStrength));
	/* Blink led */
	while (millis() < (_lastToggleTime + interval));
	_lastToggleTime = millis();
	PORTB ^= (1 << _pinCtrlLed); /* Toggle control led on */
	while (millis() < (_lastToggleTime + interval));
	_lastToggleTime = millis();
	PORTB ^= (1 << _pinCtrlLed); /* Toggle control led on */
	// while(true); /* Loop once for debuging */
};

void PrintVector(double *vData, uint8_t bufferSize, uint8_t scaleType) 
{	
	double freqInterval = (_samplingFrequency / (_samples - 0.5));
	for (uint16_t i = 0; i < bufferSize; i++) {
		double abscissa;
		/* Print abscissa value */
		switch (scaleType) {
		case SCL_INDEX:
			abscissa = double(i);
			break;
		case SCL_TIME:
			abscissa = (i / _samplingFrequency);
			break;
		case SCL_FREQUENCY:
			abscissa = (freqInterval * i);
			break;
		}
		Serial.print(abscissa, 6);
		Serial.print("\t");
		Serial.print(vData[i], 4);
		Serial.println();
	}
	Serial.println();
};
