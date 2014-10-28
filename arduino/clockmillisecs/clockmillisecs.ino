// Arduino millis() simulator
// By Matt Mets (matt.mets@cibomahto.com)
//
// Written to help understand the functionality of the millis() function on
// the Arduino platform.  Many thanks to the Arduino team for developing such
// a cool system!
 
#include <iostream>
using namespace std;
 
// CPU frequency
#define F_CPU 16000000L
 
// Simulation control variables: Set these to control the interval over which
// the timer is to be run.
#define START_VALUE     0       // Starting value of timer0_overflow_count
#define COUNT           100     // Number of overflows to simulate
#define PRINT_STEP      1       // How often to print the state
 
// Functional class to model the millis() interface
class millis_sim
{
    private:
        uint32_t timer0_overflow_count;
 
    public:
        millis_sim();
        void reset_counter();
        void set_counter(uint32_t value);
        uint32_t get_counter();
        void cause_overflow();
 
        uint32_t millis();
};
 
millis_sim::millis_sim()
{
    timer0_overflow_count = 0;
}
 
void millis_sim::reset_counter()
{
    timer0_overflow_count = 0;
}
 
void millis_sim::set_counter(uint32_t value)
{
    timer0_overflow_count = value;
}
 
uint32_t millis_sim::get_counter()
{
    return timer0_overflow_count;
}
 
void millis_sim::cause_overflow()
{
    timer0_overflow_count++;
}
 
uint32_t millis_sim::millis()
{
    return timer0_overflow_count * 64 * 2 / (F_CPU / 128000);
}
 
 
int main(void)
{
    millis_sim my_millis;
 
    my_millis.set_counter(START_VALUE);
    for (unsigned long i = 0; i < COUNT; i++)
    {
        if (i%PRINT_STEP == 0) {
            cout << my_millis.get_counter() << ","
                 << my_millis.millis() << endl;
        }
        my_millis.cause_overflow();
    }
 
}
