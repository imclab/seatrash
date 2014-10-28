const uint16_t AnalogPin[] = {A1, A2, A3, A4, A5};
const uint16_t DigitalPin[] = {5, 6, 7, 8};
 
const uint8_t AnalogPins = sizeof(AnalogPin)/sizeof(AnalogPin[0]);
const uint8_t DigitalPins = sizeof(DigitalPin)/sizeof(DigitalPin[0]);
 
const long int SerialSpeed = 115200;
 
// how many microseconds to wait before starting to sample after a row was changed
const int SampleDelay = 1000;
 
// how many samples to add up
// notice that Oversamples 2^15/2^10 = 2^5 = 32
// this is because we will not average inside the controller --> output is scaled by Oversamples
// in theory oversampling could be achieved in software outside the controller,
// however this way we reduce traffic on the serial connection, hence we need less bandwidth for data transfer
const int Oversamples = 10;
 
 
void setup() {
    Serial.begin(SerialSpeed);
    Serial.print("AnalogPins: ");
    Serial.println(AnalogPins);
    Serial.print("DigitalPins: ");
    Serial.println(DigitalPins);
    Serial.print("Oversamples: ");
    Serial.println(Oversamples);
 
    // INTERNAL1V1 = 2
    analogReference(2);
 
    // enable analog pins pullups
    for (uint8_t a=0; a < AnalogPins; ++a) {
        pinMode(AnalogPin[a], INPUT);
        digitalWrite(AnalogPin[a], HIGH);
    }
 
    // default all outputs to high (= do not measure)
    for (uint8_t d=0; d < DigitalPins; ++d) {
        pinMode(DigitalPin[d], OUTPUT);
        digitalWrite(DigitalPin[d], HIGH);
    }
}
 
 
void loop() {
    static int buffer[DigitalPins][AnalogPins];
 
    // initialize buffer with 0
    for (uint8_t d=0; d < DigitalPins; ++d) {
        for (uint8_t a=0; a < AnalogPins; ++a) {
            buffer[d][a] = 0;
        }
    }
 
    // sample
    for (uint8_t s=0; s < Oversamples; ++s) {
        for (uint8_t d=0; d < DigitalPins; ++d) {
            // pull pin low to enable measurement
            digitalWrite(DigitalPin[d], LOW);
            delayMicroseconds(SampleDelay);
 
            for (int a=0; a < AnalogPins; ++a) {
                buffer[d][a] += analogRead(AnalogPin[a]);
            }
            digitalWrite(DigitalPin[d], HIGH);
        }
    }
 
    // output result
    for (uint8_t d=0; d < DigitalPins; ++d) {
        Serial.print(d);
        for (int a=0; a < AnalogPins; ++a) {
            Serial.print(", ");
            Serial.print(buffer[d][a]);
        }
        Serial.println();
    }
}
