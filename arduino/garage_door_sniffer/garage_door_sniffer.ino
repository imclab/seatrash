#include
#include
//#define debug

#define WAIT_TIME 2 // seconds between btn pushes; must be between 1 & 42
#define CSTART 0×1000 // Memory location for the start of the code storage

#define RLED BIT0
#define GLED BIT6
#define BTN BIT3
#define PROG_BTN BIT4

#define SLOW_BLINK 0xffff
#define FAST_BLINK 0x1fff

/*
* State Machine Aliases
* Set CODE_SIZE to however many numbers you want for your code
* If you set it to three then the code will be three numbers each
* separated by a pause
* e.g.
*
*
* If the code is right then the door will open
* Otherwise you will see nothing unless in debug mode
*/
#define CODE_SIZE 2
#define STATE_REST CODE_SIZE
unsigned char prog_mode = 0;
unsigned char system_state = STATE_REST;

// Global Vars
unsigned char entry_code[CODE_SIZE];
unsigned char stored_code[CODE_SIZE];

// Prototypes
void reset_state(void);
void advance_state(void);
void open_door(void);
void delay(unsigned int d);
void blink_LED(unsigned int times, unsigned int duration);
void store_code(void);
void get_code_from_flash(void);
unsigned int check_code(void);
#ifdef debug
void display_code(unsigned char *c);
void clear_flash(void);
void blink_GLED(unsigned int times, unsigned int duration);
#endif

/*
* Button press interrupt service routine
*/
interrupt(PORT1_VECTOR) P1_ISR(void) {
TACTL |= TACLR;
delay(0×300);

// See if the button or programming button were pushed
if( (P1IFG & BTN) | (P1IFG & PROG_BTN) ) {
// Set prog mode if Programming button was pushed
if (P1IFG & PROG_BTN) {
#ifdef debug
blink_GLED(0×007,FAST_BLINK);
#endif
system_state = STATE_REST;
prog_mode = 1;
}

// Handle normal button push
if (system_state == STATE_REST) {
blink_LED(5,FAST_BLINK); //show user we are ready
advance_state();
} else {
entry_code[system_state]++; // Increment code then go back to sleep
}
// User now has WAIT_TIME seconds to do something before system reset
// Get out of LPM4 so timers will work
_BIC_SR_IRQ(LPM4_bits);
_BIS_SR_IRQ(LPM3_bits);
TACTL |= TACLR;
}
P1IFG = 0; // clear all interrupt flags
}

/*
* This interrupt will fire if the user hasn’t pressed a button in
* WAIT_TIME seconds
*/
interrupt(TIMERA0_VECTOR) TA0_ISR(void) {
switch(system_state) {
case(STATE_REST)://This should never occur due to LPM4 disabling timers
break;
default:
// Check code for zeros and reject them
if (check_code()) {
// Check if all numbers have been entered
if (system_state == CODE_SIZE-1) {
if (prog_mode) {
#ifdef debug
blink_GLED(0×2,FAST_BLINK);
#endif
store_code();
prog_mode = 0;
// Load new code
get_code_from_flash();
} else {
open_door();
}
} else {
blink_LED(1,SLOW_BLINK);
advance_state();
return;
}
}
}
// Since we didn’t advance_state() then that means all jobs are done
// Go back into deep sleep and wait for a button press
reset_state();
}

int main(void) {
WDTCTL = WDTPW | WDTHOLD;

// Normally I would set DCO to calibrated 1MHz
// But we are not using it for timing so leave it as default
BCSCTL1 = CALBC1_1MHZ;
DCOCTL = CALDCO_1MHZ;
BCSCTL3 |= LFXT1S1; // config low freq clock source to VLO

// Setup procedure for input button and output LEDS
P1DIR = RLED + GLED;
P1REN = PROG_BTN + BTN; // enable pullup resistors buttons
P1OUT = PROG_BTN + BTN; // set all pins low, set buttons to pullup
P1IES |= PROG_BTN + BTN; // Set trigger on high to low event
P1IFG &= ~PROG_BTN + ~BTN; // make sure flag is clear
P1IE |= PROG_BTN + BTN; // enable interrupt

// Setup Timer A to interrupt off of VLO every WAIT_TIME seconds
TACCR0 = WAIT_TIME * 1500; // 1500 => ~12kHz VLO source divided by 8
TACTL = TASSEL_1 + ID_3 + MC_1 + TACLR; // use ACLK, divide by 8, up-mode, and clear the count
TACCTL0 = CCIE;

get_code_from_flash();
#ifdef debug
display_code(stored_code);
#endif

// Unmask interrupts and Enter super duper low power mode
// This will just wait for a btn press
_BIS_SR(LPM4_bits + GIE);
}

/*
* Sets system state to rest and enter LPM4
*/
void reset_state(void) {
system_state = STATE_REST;
_BIC_SR_IRQ(LPM3_bits);
_BIS_SR_IRQ(LPM4_bits);
}

void advance_state(void) {
// Using Modulo is cleaner than if/else
// but it adds 108 Bytes non-optimized ; 67 bytes optimized
//system_state = (system_state + 1) % CODE_SIZE;
// So do this instead
system_state = system_state == STATE_REST ? 0 : system_state+1;
entry_code[system_state] = 0;
}

/*
* Check Code
* This just looks to see if the user didn’t push
* the button even once between WAIT_TIMEs.
* If no presses then we will notify the user, reset the system
* and go back to sleep.
*/
unsigned int check_code(void) {
if (entry_code[system_state] == 0) {
blink_LED(25,FAST_BLINK); //tell user there is an error
return 0;
}
return 1;
}

/*
* Open the Door; All this does is flash the green LED for a while
* In production this would trigger the relay and open the door
*/
void open_door(void) {
unsigned char test = 1;

// Test user entered code against code from flash storage
for (int i=0; i<CODE_SIZE; i++) {
if (entry_code[i] != stored_code[i]) {
test = 0;
}
}
if (test) { // If codes match then open the door
P1OUT |= GLED;
delay(SLOW_BLINK);
delay(SLOW_BLINK);
delay(SLOW_BLINK);
P1OUT &= ~GLED;
}
#ifdef debug
else { // If codes don't match display the entered code
display_code(entry_code);
}
#endif
}

/*
* Blink Red LED
*/
void blink_LED(unsigned int times, unsigned int duration) {
for (unsigned int i = 0; i < times ; i++) {
P1OUT |= RLED;
delay(duration);
P1OUT &= ~RLED;
if (i < times) delay(duration);
}
}

#ifdef debug
/*
* Blink Green LED
*/
void blink_GLED(unsigned int times, unsigned int duration) {
for (unsigned int i = 0; i < times ; i++) {
P1OUT |= GLED;
delay(duration);
P1OUT &= ~GLED;
if (i < times) delay(duration);
}
}
#endif

/*
* Delay function.
*/
void delay(unsigned int d) {
unsigned int i;
for (i = 0; i<d; i++) {
nop();
}
}

/*
* Read Info Flash and retrieve the key code
*/
void get_code_from_flash(void) {
//FCTL2 = FWKEY + FSSEL1 + FN1; // set flash clock to MCLK / 3
char *p;
p = (char *)CSTART;
for(int i=0; i<CODE_SIZE; i++) {
stored_code[i] = *p++;
}
}

/*
* Store newly entered code into flash
*/
void store_code(void) {
volatile char *Flash_ptr;
Flash_ptr = (char *)CSTART;

FCTL2 = FWKEY + FSSEL_1 + FN1; // set flash clock to MCLK / 3
delay(SLOW_BLINK); // Not sure why but code is more stable after
// letting the clock settle

/*
* Erase one block of info flash
*/
FCTL3 = FWKEY; // Clear lock bit
FCTL1 = FWKEY + ERASE; //Set erase bit
*Flash_ptr = 0; // Dummy write to erase flash

/*
* Write code to flash
*/
FCTL1 = FWKEY + WRT; // Set WRT bit for write operation
for (int i=0; i<CODE_SIZE; i++) {
*Flash_ptr++ = entry_code[i];
}
FCTL1 = FWKEY; // Clear WRT bit
FCTL3 = FWKEY + LOCK; // Set LOCK bit
}

#ifdef debug
/*
* Display Code
* Let the user know the code when we are in debug mode
* Called at Power up
* Also called if the user entered an invalid code.
* Format is:
*
*
*
* etc.
*/
void display_code(unsigned char * c) {
for (int i=0; i<CODE_SIZE; i++) {
blink_LED(0×0003,FAST_BLINK);
delay(SLOW_BLINK);
blink_LED(c[i],SLOW_BLINK);
}
}
#endif
