/*
  MaxStepper is a modification of Stepper.cpp that gives adds
  non-blocking capability. That is, as long as you call update()
  often, you don't have to wait for the stepper to complete its movement
  before you can make other function calls.
  
  It should be backward compatible with Stepper.cpp code.
  
  Non-blocking code by Rob Seward in 2009, it's based off of Stepper.cpp version 0.4
  
  www.robseward.com

  The original stepper.cpp v0.4 notes:
  
  Stepper.h - - Stepper library for Wiring/Arduino - Version 0.4
  
  Original library     (0.1) by Tom Igoe.
  Two-wire modifications   (0.2) by Sebastian Gassner
  Combination version   (0.3) by Tom Igoe and David Mellis
  Bug fix for four-wire   (0.4) by Tom Igoe, bug fix from Noah Shibley
  Alterations for Maxiuino Stepper and no interuption by Chris Coleman
  
*/

// ensure this library description is only included once
#ifndef MaxStepper_h
#define MaxStepper_h

// library interface description
class MaxStepper {
  public:
    // constructors:
    MaxStepper();
    void setStep(int number_of_steps, int dir_pin, int step_pin);

    // speed setter method:
    void setSpeed(int whatSpeed);

    // mover method:
    void step(long number_of_steps);

		void determineDirection(long number_of_steps);

		void setAction(long number_of_steps);
		int update();
		
		void maybeStepMotor(long* steps_left_ptr);

    int version(void);

  private:
    void stepMotor(int thisDir);
    int done;
    bool running;
    int direction;        // Direction of rotation
    int speed;          // Speed in RPMs
    unsigned long step_delay;    // delay between steps, in ms, based on speed
    int number_of_steps;      // total number of steps this motor can take
    int pin_count;        // whether you're driving the motor with 2 or 4 pins
    long step_number;        // which step the motor is on
    long seq_steps_left;   //number of steps left if running a sequence
    
    // motor pin numbers:
     int dir_pin;
    int step_pin;
    
    long last_step_time;      // time stamp in ms of when the last step was taken
};

#endif

