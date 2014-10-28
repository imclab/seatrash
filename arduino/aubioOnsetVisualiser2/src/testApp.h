#ifndef _TEST_APP
#define _TEST_APP


#include "ofMain.h"

#include "ofxOsc.h"

// listen on port 12345
#define PORT 12345
#define NUM_MSG_STRINGS 20
#define NUM_DETECTION_SAMPLES 128000

//--------------------------------------------------------
class testApp : public ofBaseApp{

	public:

		void setup();
		void update();
		void draw();

		void keyPressed  (int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void windowResized(int w, int h);
	
		void printMessages();
		void printInfo();

		
		void checkMaxima(float f);
		void checkRawMaxima(float f);
				
		void drawOnsetFunction();
		ofTrueTypeFont		font;

		

private:
		ofxOscReceiver	receiver;

		int				current_msg_string;

//aubio onset detection		
		float			onsetFunction[NUM_DETECTION_SAMPLES];
		int				onsetIndex;
		bool			onsetRecorded[NUM_DETECTION_SAMPLES];

//specDiffOnset2~ detection
		int				rawOnsetIndex;
		float			rawOnsetFunction[NUM_DETECTION_SAMPLES];		
		bool			rawOnsetRecorded[NUM_DETECTION_SAMPLES];

		
		float			maximumDetectionFunction;
		float			minimumDetectionFunction;		
		
		float			maxValue;
		
		int				amplitudeNumber;
		bool			outputGraphics;
		bool			resetMaxima;
		
		string			msg_strings[NUM_MSG_STRINGS];
		float			timers[NUM_MSG_STRINGS];
		string			detectionType;
		float			lastOnsetDetectionValue;
		int				mouseX, mouseY;
		string			mouseButtonState;

		string			axisString[128];

		bool reIndexFlag;
		bool logMode;
		bool midiMode;
		
		float screenWidth;
		float screenHeight;
		
		
		string midiString[128];
		
		int mouseDownX;
		int mouseDownY;
		
		float freqMin ;
		float freqMax ;
		float freqLog ;
		float logMin ;
};

#endif
