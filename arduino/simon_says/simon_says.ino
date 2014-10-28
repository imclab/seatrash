/*FEAa1AccContFinal: access control system-  All singing, all dancing
ver 1 Jan 2010
Final Stage edition of AccCont started 30 Dec 2009

Written during final stages of a nasty cold, and
while strained back muscles (snow shoveling) were
healing. << (I often include such "pointless" odds
and ends here, because it is, to me, fun to be
reminded of things later.)

The VERSION is the version of this STAGE in the development
of the program "FEAa1AccCont". This potentially confusing
matter of "version" versus "stage" doesn't usually occur
in my work, as early "stages" are overwritten as the programming
progresses. It was only because FEAa1AccCont was being used
as the basis of a tutorial for....

http://sheepdogguides.com/

... that the need to introduce "stages" as well as "versions"
arose.

==============================================================

This program....

Requires 3 LEDs, two switches.
One of the LEDs is standing in for an electromechanical strike plate

Two of the LEDs present a "challenge" to the user
If the user responds by holding down the correct
combination of switches for a short while, the
"lock" "opens" for a time, i.e. the LED standing
for the lock switches on. (That LED could be
replaced with an electro-mechanical strike plate
very easily... and with no changes to the software.)

The lock doesn't open WHEN the user presses the right
combination on the switches... that would make trial and
error too easy. Rather, the software looks at the switches
at a pre-determined moment, and if they are properly
set at that moment, the door opens... or at least the "lock" LED turns
on for a set period.

The correct answer will be as follows....

If LEDs show:         Then press (x) or don't press (-)....
Left LED Right LED        Left button Right button
off      off          -   -  (See futher notes below later)
off      on           *   *
on       off          *   -
on       on           -   *

You don't have to memorize the table above. To know what
buttons to press, use the following rule....

a) Complement the LED pattern. (That means that if an
     LED is on, then in the complement it is off.
b) Treat what you have as a binary number.
c) Add one to that binary number.
d) Throw away any extra digit created by a "carry".

Here are all four cases done for you by
those steps....

11 Starting with both LEDs on...
00 The complement
01 The result of adding 1

01 Starting with left off, right on...
10 The complement
11 The result of adding 1

10 Starting with left off, right on...
01 The complement
10 The result of adding 1

00 Starting with both LEDs off...
11 The complement
Adding 1 would give you 100.
Throw away the carried digit... leaves you with...
00... so press NEITHER key to answer the "off/off" challenge.
(the program does not offer this challenge for two reasons...
    a) The device would look "off" if presenting zero as
          the challenge
    b) Users would have to remember to press AND QUICKLY
          RELEASE a button to answer the "zero" challenge.
          Without the "press and release", the countdown
          to "check buttons now" would never start.

So, in the version presented here, there are only three
challenges... making solution by trial and error almost
possible. But it would be easy to add more LEDs, more
buttons, which would making many more challenges to find
answers for.

(The exclusion the "zero" challenge was added between
the 4th stage of the program's development and the
final stage. The change was trivial,
because the program was well structured.
Can you find where the change was made?)
*/

const byte LEDlock=13;//Pin where lock would be connected.
const byte LED1=12;//LED1 connected here (MS bit)... left hand LED
const byte LED0=11;//LED0 connected here (LS bit)

const byte bYel1=5;//pin yellow switch is on... left hand switch
const byte bGrn0=4;//pin green switch is on
// N.B.: "Yel1" is "wye-ee-ell-one" for YELlow switch, bit ONE

byte bNumToShow;
byte bNumShownPreviously=0;
/*This variable above is part of the mechanism to ensure that
the same challenge never arises twice in a row. The variable
must be initialized, or there will be unpredictable results
the first time @if (bNumToShow==bNumShownPreviously)" is
encountered. As we we will never (see other) present the
challenge defined by bNumToShow=0, we can safely initialize
bNumShownPreviously to zero. (Even if it were initialized to
something else, the code would "work", with the tiny "flaw"
that the first challenge presented would never be whatever
bNumShownPreviously was initialized to.*/

byte bFailuresInARow=0;

void setup()
{
   //Serial.begin(9600);//for debug work only
   pinMode(LEDlock,OUTPUT);
   pinMode(LED0,OUTPUT);
   pinMode(LED1,OUTPUT);

   pinMode(bGrn0,INPUT);
   pinMode(bYel1,INPUT);

   LockDoor();

   bFailuresInARow=0;
   }

void loop()
{
  bNumToShow=bPickAChallenge(1,3,bNumShownPreviously);
 /*The previous line originally simply @bNumToShow=random(1,4)"... which
        set bNumToShow to 1,2 or 3.
    Don't include zero in the things that can be presented as
        the challenge, i.e. always use 1 or more for the first parameter.
        (See notes in header for the reasons for avoiding zero.)*/
  bNumShownPreviously=bNumToShow;/*Update contents of bNumShownPreviously,
      ready for the next time we need to know what was most resently shown*/

  showInBinary(bNumToShow);//Show it on LEDs.

  while ((!boSwitchPressed(bYel1))&&(!boSwitchPressed(bGrn0)))
     {;};//Wait for a switch to be pressed

  delay(600);//User must finish getting right buttons pressed during this delay

  /*Beware: If you think the program "isn't working", be careful that you are
  keeping the buttons of the correct response down long enough. You must keep
  them down until the access control device either says "Right" or "Wrong".
  If you enter the CORRECT code, but release the buttons too soon, your answer
  will still be treated as WRONG.
  */

  if (boCorrectButtonsPressedNow(bNumToShow))
       {SaySuccessAndOpenDoorDuringMessage();}
          else {SayFailed();};

  randomSeed(BottomOfMillis());//Only NEEDED once, but it does no
  //harm to do it every time we pass through this loop.

}//end of function "loop"

boolean boSwitchPressed(byte bWhichSwitch)
//In this version, the function does NOT wait for the switch
//to be released.
  {
   boolean boAns=false;//What is in this will eventually be passed
     //back to the calling code. Assume switch NOT pressed,
     //for the moment.
   if (digitalRead(bWhichSwitch)==LOW)
     {
        delay(20);//Wait for bounces to pass
        boAns=true;
     }//end of "if..."
     return boAns;
  }//end of boSwitchPressed

void SayFailed()
{
   word wHowManyFlashCycles=6;
   //Th following multiple @if@s are a bit crude..
   //but they Do The Job!
   if (bFailuresInARow>0) {wHowManyFlashCycles=12;};
   if (bFailuresInARow>1) {wHowManyFlashCycles=40;};
   if (bFailuresInARow>3) {wHowManyFlashCycles=60;};
   if (bFailuresInARow>5) {wHowManyFlashCycles=100;};
   //(Could be extended)
   FlashLEDs(wHowManyFlashCycles,60);
   if (bFailuresInARow<255) bFailuresInARow++;
   //Don't do the "add 1" to bFailuresInARow if it is 255,
   //because you will get overflow. A byte-type variable
   //can't hold 256.
}//end of SayFailed

void SaySuccessAndOpenDoorDuringMessage()
//That name looks silly... but it will appear only
//once, and the extra information will help you
//be clear about what is done inside the function.

{
  UnlockDoor();
  FlashLEDs(6,200);
  LockDoor();
  bFailuresInARow=0;
}//end of SaySuccess...

void setLEDs(byte bL1, byte bL0)
//Easily extended for more LEDs
{
   if (bL0==0) digitalWrite(LED0,LOW);
               else  digitalWrite(LED0,HIGH);
   if (bL1==0) digitalWrite(LED1,LOW);
               else  digitalWrite(LED1,HIGH);
}//end of "setLEDs"

void FlashLEDs(byte bReps,byte bRate)
//Call this a number of times to cause the LEDs to
//flash on-off-on-off. The number in bRate controls
//how fast the LEDs flash. The number in bReps
//determines how many flash cycles happen.
{
  for (int i=0;i<bReps;i++)
   {
      setLEDs(1,1);
      delay(bRate);
      setLEDs(0,0);
      delay(bRate);
   }//end of "for..."
}//end of FlashLEDs

void LockDoor()
//Simple at the moment... but it is
//still worth "packaging" this in its
//own function, in case the program
//has to be adapted for an unusual
//locking device.
{
digitalWrite(LEDlock,LOW);
}

void UnlockDoor()
//See LokDoor rems.
{
digitalWrite(LEDlock,HIGH);
}

void showInBinary(byte bNum)
/*Set LED1 on or off depending on
left hand digit in binary representation
of number in bNum...

And set LED0 on or off depending on
right hand digit in binary representation
of number in bNum.

For debug: send what's in bNum to the serial monitor,
    so we can check that what the LEDs are showing is right...
(The int() stuff around bNum converts it from byte type
   data, which println can't handle, to an equivalent
   int type datum, which println IS okay with.)
*/
{
//Serial.println(int(bNum));

//Set LED1 on or off...
if ((bNum & B10)==B10)
  {digitalWrite(LED1,HIGH);}
  else
  {digitalWrite(LED1,LOW);};

//Set LED0 on or off...
  if ((bNum & 1)==1)
  {digitalWrite(LED0,HIGH);}
  else
  {digitalWrite(LED0,LOW);};
}//end of showInBinary

boolean boCorrectButtonsPressedNow(byte bToDecode)
/*Don't overlook the "bo" at the start of the name.
This function is asking "ARE the correct buttons
pressed now?" It isn't, for instance, establishing
a state in which the right buttons ARE pressed.

The byte in bToDecode is what is showing on
the LEDs. The user must apply whatever rule the
access control system is applying, and press
the switches accordingly.*/
{
  boolean boReturn=false;//Assume for the time being that
    //user has NOT pressed the right switches.

  //Fetch and record the current state of the switches...
  //Yellow switch is left hand switch.
  boolean boStateOfYel1;
      boStateOfYel1=boSwitchPressed(bYel1);
      //"true" means switch is closed
  boolean boStateOfGrn0;//Create variable
      boStateOfGrn0=boSwitchPressed(bGrn0);//Fill it

  //Put the state of the LEDs into easily accessed booleans...
  boolean boStateOfLED1;
     if ((bToDecode&B10)==B10)
       {boStateOfLED1=true;}
         else {boStateOfLED1=false;}
  //"true" means LED on

  boolean boStateOfLED0;
     if ((bToDecode&1)==1)
       {boStateOfLED0=true;}
         else {boStateOfLED0=false;}

 /*Followiong for debug...

Serial.print(int(bToDecode));
Serial.print("  ");
serialdb("Yel",boStateOfYel1);
serialdb("Grn",boStateOfGrn0);
serialdb("LED1",boStateOfLED1);
serialdb("LED0",boStateOfLED0);
Serial.println("");


... end of debug lines*/


  /*Now look at various "correct" answers, and if any
  are present change boReturn to true.

  We could write some "clever" code to calculate the
  correct answers.... but I'm not clever enough to read
  that reliably, so I'm just going to do the job
  "the hard way".

  In each of the following blocks, the rem a the
  top will explain the LED challenge and the
  correct response with the following code:

  "off on  * *"

  ... will mean if LEDs are "off" and "off", in that
  order, then the correct responmse is: both buttons pressed.*/

//off      on           *   *
  if (
     ((!boStateOfLED1)&&(boStateOfLED0))
     &&
     ((boStateOfYel1)&&(boStateOfGrn0))
     )
      {boReturn=true;};

//on       off          *   -
  if (
     ((boStateOfLED1)&&(!boStateOfLED0))
     &&
     ((boStateOfYel1)&&(!boStateOfGrn0))
     )
      {boReturn=true;};

//on       on           -   *
  if (
     ((boStateOfLED1)&&(boStateOfLED0))
     &&
     ((!boStateOfYel1)&&(boStateOfGrn0))
     )
       {boReturn=true;};

//off      off: This challenge will not be issued.

  return boReturn;
}//end of boCorrectButtonsPressedNow

void serialdb(char sPrompt[8],boolean boVal)
{
Serial.print(sPrompt);
if (boVal)
 {Serial.print(":true   ");}
    else {Serial.print(":false  ");};
}

long BottomOfMillis()
/*You don't have to understand everything here...
But the more you master, the better off you will
be.

The MAIN thing to understand is that this function
returns a number that depends on how long it has
been since the processor was last reset. As that
is measured in milliseconds, it is very, very
unlikely that you will get the same number twice
if you call this function after some delay which
has been affected by human reponse times.

This function returns the "bottom part" of whatever
millis is returning at the time the function is
called. What I mean by that, roughly speaking, is....

Millis is an "unsigned long" type datum. Among other
tbings this means that it is made up of many digits.
Slightly distorting things, just so I can discuss this
in decimal terms, lets say that "millis" can be a
number up to 999,999. And lets say that I want a
number of no more than three digits.

The "long()" funtion MAY be chopping unsigned long
numbers down as follows....

123,456 becomes 123
123,987 becomes 123... etc.

I want something more like...
 123,456 becomes 456
 123,987 becomes 987....

... and that, roughly speaking, is what this function
does with the number it fetches from millis.

It uses a bitwise AND to accomplish its task.

The "0xFFFFFF" is just a quick way of writing a
very big... but not too big!... number which
in binary would be all ones. The decimal
"equivalent", in essense, would be a number
consisting of a lot of 9's*/

{
long lngReturn;
lngReturn=(millis()&0xFFFFFF);
return lngReturn;
}//end of BottomOfMillis

byte bPickAChallenge(byte bLowInc, byte bHiInc, byte bPrev)
/*Picks a number in the range bLowInc to bHighInc, INCLUSIVE...
i.e. bPickAChallenge(1,3,0) will pick either 1,2 or 3.

Note that this is slightly different from what the Ardino's
built-in "random" does. "random(1,3)" will only return 1 or 2,
not 3.

The last parameter defines a number that may NOT be returned.
It is used to provide a mechanism, which in conjunction with
other code, allows the programmer to ensure that users do not
see the same challenge twice in a row.*/

{
byte bTmp;
bHiInc=bHiInc+1;//to allow for the different range setting
  //conventions of my bPickAChallenge and the Arduino's "random()";
do {bTmp=random(bLowInc,bHiInc);} while(bTmp==bPrev);
  return bTmp;
}//end of bPickAChallenge

