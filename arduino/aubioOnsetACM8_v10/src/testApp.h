#ifndef _TEST_APP
#define _TEST_APP


#include "ofMain.h"

#include "ofxOsc.h"

// listen on port 12345
#define PORT 12345
#define SENDER_PORT 12347
#define HOST "localhost"
#define NUM_MSG_STRINGS 20
#define NUM_DETECTION_SAMPLES 96000
#define NUM_TIME_LAGS	500
#define AUTO_CORR_DIMENSIONS 60
#define TRANSITION_SIZE 8

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
				
		void drawOnsetFunction();
		ofTrueTypeFont		font;
		
		void checkMaxima(float f);
		void checkRawMaxima(float f);

		
		void calculateAutocorrelation();	
		void drawAutocorrelation();
		void drawACM();
		void updateACM();	
		void setTransitionMatrix();
		void setACMprintString();
		void updateFollow();
		double gaussian(double x, double m , double s);
		double exponentialDistribution(double x, double m , double s);
		double rayleigh(double tau, double beta);
		void initialiseMatrices();
		void resetMatrix();		
		bool checkEntropyTempos();
		void differenceFrom(int t, int p);
		float phaseDifferenceFromFollowed();
		void testTransitions();
		void testFullTransitions();
		int minimumPhaseDifference(int testPhaseIndex, int followPhaseIndex, int testTempo);
		
private:
		ofxOscReceiver	receiver;
		ofxOscSender	sender;
		int				current_msg_string;
		int				autocorrelationLength;
		int				autocorrelationHopsize;
		bool			autocorrelationMode;
		int				autocorrelationMaximum;
		int				transitionWidth;
//aubio onset detection		
		float			onsetFunction[NUM_DETECTION_SAMPLES];
		int				onsetIndex;
		bool			onsetRecorded[NUM_DETECTION_SAMPLES];
		bool			acmOnsetRecorded[NUM_DETECTION_SAMPLES];
		bool			maxACMOnsetRecorded[NUM_DETECTION_SAMPLES];
		bool			acmFollowOnsetRecorded[NUM_DETECTION_SAMPLES];
		int				lastFollowOnsetIndex, onsetDifference, followTempo;
		float			runningAverage[8];
		float			runningAverageValue;
		int				runningAverageIndex, runningAverageLength;
		
//specDiffOnset2~ detection
		int				rawOnsetIndex;
		float			rawOnsetFunction[NUM_DETECTION_SAMPLES];		
		float			processedOnsetFunction[NUM_DETECTION_SAMPLES];
		bool			rawOnsetRecorded[NUM_DETECTION_SAMPLES];
		float			rawOnsetMedian;

		float			autocorrelation[NUM_TIME_LAGS];
		
		float			maximumDetectionFunction;
		float			minimumDetectionFunction;		
		
		float			maxValue;
		
		int				amplitudeNumber;
		bool			outputGraphics;
		bool			resetMaxima;
		float transitionPowerValue, transitionTempoStdDev, transitionStdDev;//the higher, the less transition between adjacent phase and tempos is allowed
		
		string			msg_strings[NUM_MSG_STRINGS];
		float			timers[NUM_MSG_STRINGS];
		string			detectionType;
		float			lastOnsetDetectionValue;
		int				mouseX, mouseY;
		string			mouseButtonState;

		string			axisString[128];

		bool reIndexFlag;
		bool logMode;
	//	bool midiMode;
		int startFrameIndex;
		float screenWidth;
		float screenHeight;
		
		int autocorrelationDisplayMin;
		int autocorrelationDisplayMax;
		
		int samplingRate;
		float framesPerSecond;
		int signalVectorSize;
		int ioVectorSize;
		
		bool	pauseMode, bSnapshot;
		int pausedIndex;
		int pausedRawIndex;
		
		int followTempoIndex, followPhaseIndex;
		int hoverTempo, hoverPhase;
		string midiString[128];
		
		float autoCorrMatrix [AUTO_CORR_DIMENSIONS][AUTO_CORR_DIMENSIONS];
		float storedAutoCorrValues[AUTO_CORR_DIMENSIONS][TRANSITION_SIZE];
		float autoCorrAlignment [AUTO_CORR_DIMENSIONS];//how the matrix aligns relative to index
		int autoCorrTempos[AUTO_CORR_DIMENSIONS];//tempos are in frames of data sent from aubioOnset~
		float entropy[AUTO_CORR_DIMENSIONS];
		float energySum[AUTO_CORR_DIMENSIONS];
		float entropyMinimum;
		int entropyTempo;
		
		int peakEntropyTempo, peakEntropyPhase;
		float peakEntropyValue;
		//i.e. 1 frame oer 11.6msec => tempo is approx 40 frames at 120BPM
		int acmIndex, beatLastSent, entropyBeatLastSent;
		float log_of_two;
		bool autoCorrMatrixMode;
		int tempoIndexMin, tempoIndexMax, phaseIndexMin, phaseIndexMax, autoCorrTempoMinimum, autoCorrTempoMaximum;
		int followPhaseWidthToTest, followTempoWidthToTest;
		float hopTime, mouseACMvalue;
		float ACMupdateFactor;
		float rawOnsetMaximum;
		float transitionProbability[10];
		float transitionTempoProbability[10];
		string acmString;
		string debugString, transitString, followString;
		int debugInt;
		int mouseDownX;
		int mouseDownY;
		int Xcoord, Ycoord;
		int	aubioHopSize;
		float thresholdAboveMedian;
		float runningOnsetDetMax;
		int runningAverageGap;
		int tempoOutput, phaseOutput;
		int maxTempoIndex, maxPhaseIndex;
		char followBeatPosition;
		float offBeatProportion;
		float followProbabilityNoiseFloor;
		float outputPhaseDifference;
		float followGaussianStdDev, followPhaseStdDev, followTempoStdDev;
		double maximumRayleigh;
		float colourFactor;
		float freqMin ;
		float freqMax ;
		float freqLog ;
		float logMin ;
		ofImage 			img;
		int snapCounter;
		
		int entropyTempos[60];
		int entropyTemposIndex;
		bool autoSetTempo;
		string entropyCheckString;
		string distanceCheckString;
		
};

#endif
