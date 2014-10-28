#include "testApp.h"
//#include "math.h" 

#define SAMPLING_FREQUENCY 44100
#define FOURIER_LENGTH 2048
#define TEXT_HEIGHT 10
//--------------------------------------------------------------
void testApp::setup(){
	// listen on the given port
//	cout << "listening for osc messages on port " << PORT << "\n";
	receiver.setup( PORT );

	current_msg_string = 0;
	mouseX = 0;
	mouseY = 0;
	mouseButtonState = "";

	ofBackground( 30, 30, 130 );


	outputGraphics = false;
	
	maximumDetectionFunction = 20;
	minimumDetectionFunction = -20;
	
	screenWidth = (float) ofGetWidth();
	screenHeight = (float) ofGetHeight();
	
	mouseDownX = 0;
	mouseDownY = 0;
	
	amplitudeNumber = 256;//number of amplitudes shown on screen
		
	maxValue = 1.0;
	
	detectionType = "complex";
	lastOnsetDetectionValue;
	
	logMode = false;
	
	midiMode = true;
	
	resetMaxima = false;
	
	reIndexFlag = false;

	ofBackground(0,0,0);
	
	rawOnsetIndex = 0;
}

//--------------------------------------------------------------
void testApp::update(){
maxValue *= 0.995;
	// hide old messages

	// check for waiting messages
	while( receiver.hasWaitingMessages() )
	{
		// get the next message
		ofxOscMessage m;
		receiver.getNextMessage( &m );

			// unrecognized message: display on the bottom of the screen
	//		string msg_string;
	//		msg_string = m.getAddress();
			if (m.getAddress() == "/aubioData" ){
			
				if( m.getArgType( 0 ) == OFXOSC_TYPE_FLOAT ){
				
				onsetIndex++;
				onsetRecorded[onsetIndex] = false;
				
					if (onsetIndex >= NUM_DETECTION_SAMPLES)
					onsetIndex = 0;
				
				onsetFunction[onsetIndex] =  m.getArgAsFloat(0);
				
				checkMaxima(m.getArgAsFloat(0));
				
				}//end if type FLOAT
			}//end if aubioData
			
					
	if (m.getAddress() == "/rawAubioData" ){
			
				if( m.getArgType( 0 ) == OFXOSC_TYPE_FLOAT ){
				
				rawOnsetIndex++;
						
					if (rawOnsetIndex >= NUM_DETECTION_SAMPLES)
					rawOnsetIndex = 0;
				
				rawOnsetFunction[rawOnsetIndex] =  m.getArgAsFloat(0);
				checkRawMaxima(m.getArgAsFloat(0));
				
				}//end if type FLOAT
			}//end spec diff message




		if (m.getAddress() == "/onset" ){
			onsetRecorded[onsetIndex] = true;
			lastOnsetDetectionValue = onsetFunction[onsetIndex];
		}

		if (m.getAddress() == "/rawOnset" ){
			rawOnsetRecorded[rawOnsetIndex] = true;

		}

		if (m.getAddress() == "/mode" ){
		resetMaxima = true; 
		detectionType = m.getArgAsString(0);
		}

	}//end while

}


void testApp::checkMaxima(float f){

//maximumDetectionFunction *= 0.99999;
//minimumDetectionFunction += (maximumDetectionFunction - minimumDetectionFunction)*0.00001;

	if (maximumDetectionFunction * 1.08 < f){
		maximumDetectionFunction = 1.08*f;
	}

	if (minimumDetectionFunction + (fabs(minimumDetectionFunction * 0.08)) > f){
		minimumDetectionFunction = f - (0.08 * fabs(f));
	}
	
	if (resetMaxima == true){
			maximumDetectionFunction = 30;
			minimumDetectionFunction = 0;
			resetMaxima = false;
			}
	
}


void testApp::checkRawMaxima(float f){

//maximumDetectionFunction *= 0.99999;
//minimumDetectionFunction += (maximumDetectionFunction - minimumDetectionFunction)*0.00001;

	if (maximumDetectionFunction * 1.08 < f){
		maximumDetectionFunction = 1.08*f;
	}

	if (minimumDetectionFunction + (fabs(minimumDetectionFunction * 0.08)) > f){
		minimumDetectionFunction = f - (0.08 * fabs(f));
	}

}



//--------------------------------------------------------------
void testApp::draw(){

	drawOnsetFunction();
	printInfo();

}

void testApp::printMessages(){
	string buf;
	buf = "listening for osc messages on port" + ofToString( PORT );
	ofDrawBitmapString( buf, 10, 20 );

	for ( int i=0; i<NUM_MSG_STRINGS; i++ )
	{
	ofDrawBitmapString( msg_strings[i], 10, 40+15*i );
	}
	
}

void testApp::printInfo(){	
	ofSetColor(255,255,255);
	string printString;

/*	printString = "Max ";
	printString += ofToString(maximumDetectionFunction);
	printString += "    Min ";
	printString += ofToString(minimumDetectionFunction);
*/	

	printString += detectionType;
	printString +="    ";
	printString += ofToString(lastOnsetDetectionValue, 1);
	ofDrawBitmapString( printString  , 10, ofGetHeight() - 20);
}

//--------------------------------------------------------------
void testApp::keyPressed  (int key){

	if (key == OF_KEY_UP){

	}

	if (key == OF_KEY_DOWN ){

	}		


	if (key == OF_KEY_RIGHT ){

	}		

	if (key == OF_KEY_LEFT ){

	}		

	if (key == 'L' || key == 'l'){
	logMode = !logMode;
	}

	if (key == 'p' || key == 'P'){

	}

	if (key == 'm' || key == 'M'){
	midiMode = !midiMode;
	}
		
	if (key == 'x' || key == 'X'){
	amplitudeNumber *= 2;
	}

	if (key == 'z' || key == 'Z'){
	amplitudeNumber /= 2;
	}

if ((key == '=' || key == '+') && amplitudeNumber < 120){
	amplitudeNumber += 8;
	}

if ((key == '-' || key == '_') && amplitudeNumber > 12){
	amplitudeNumber -= 8;
	}		

}



void testApp::drawOnsetFunction(){
	int tmpIndex = onsetIndex;
	float width = screenWidth / (float) amplitudeNumber;	
	float maximumValue = maximumDetectionFunction ;
	float minimumValue = minimumDetectionFunction ;
	float difference = maximumValue - minimumValue;
	float scale_factor = screenHeight/ difference;
	
	//draw axis
	ofSetColor(255,255,255);
	ofLine(0, screenHeight - (scale_factor*(0 - minimumValue)), 
			(int) (width*(amplitudeNumber)),  screenHeight - (scale_factor*(0 - minimumValue)) );

	
	for (int Xvalue = 0;Xvalue < amplitudeNumber; Xvalue++){
	
	int Xindex = (onsetIndex-Xvalue) ;
	int previousIndex = (Xindex-1);
	
	ofSetColor(55,100,255);

	ofLine((int) (width*(amplitudeNumber - Xvalue - 1)), screenHeight - (scale_factor*(onsetFunction[previousIndex]- minimumValue)), 
			(int) (width*(amplitudeNumber - Xvalue)),  screenHeight - (scale_factor*(onsetFunction[Xindex]- minimumValue)) );

	if (onsetRecorded[Xindex] == true){
		ofSetColor(255,100,255);
		ofCircle(width*(amplitudeNumber - Xvalue), screenHeight - (scale_factor*(onsetFunction[Xindex]- minimumValue)) , 3);
	}
	
//specDiffOnsets	
	ofSetColor(55,100,55);
 Xindex = (rawOnsetIndex-Xvalue) ;
 previousIndex = (Xindex-1);

	ofLine((int) (width*(amplitudeNumber - Xvalue - 1)), screenHeight - (scale_factor*(rawOnsetFunction[previousIndex]- minimumValue)), 
			(int) (width*(amplitudeNumber - Xvalue)),  screenHeight - (scale_factor*(rawOnsetFunction[Xindex]- minimumValue)) );
	


	if (rawOnsetRecorded[Xindex] == true){
		ofSetColor(255,100,0);
		ofCircle(width*(amplitudeNumber - Xvalue), screenHeight - (scale_factor*(rawOnsetFunction[Xindex]- minimumValue)) , 3);
	}
	
	}//end for Xvalue (across the recent observations of osc data)

	
	//label y axis
	int axisHeight, stepSize;
	ofSetColor(255,255,255);
	stepSize = 1000;

	while((difference / stepSize) < 3)
	stepSize /= 2;
	
	while ((difference / stepSize) > 7)// maximum 6 numbers to display
	stepSize *= 2;

	
	for (axisHeight = 0; axisHeight < maximumDetectionFunction; axisHeight += stepSize){
	ofDrawBitmapString( ofToString((int)axisHeight), ofGetWidth()-50,
	 (int) ((TEXT_HEIGHT/2) +(screenHeight - (scale_factor*(axisHeight- minimumValue)))) );
	}
	
	for (axisHeight = max(0, (int)minimumDetectionFunction); axisHeight > min(0, (int)minimumDetectionFunction); axisHeight -= stepSize){
	ofDrawBitmapString( ofToString((int)axisHeight), ofGetWidth()-50,
	 (int) ((TEXT_HEIGHT/2) +(screenHeight - (scale_factor*(axisHeight- minimumValue)))) );
	}
	
	//label x axis
	stepSize = 20;//need to make sure not too many of these:
	
	while((amplitudeNumber / stepSize) < 4)
	stepSize /= 2;
	
	while ((amplitudeNumber / stepSize) > 8)
	stepSize *= 2;

	int labelIndex = onsetIndex - (onsetIndex % stepSize);
	for (int y = labelIndex; y > onsetIndex - amplitudeNumber; y -= stepSize){
		ofDrawBitmapString( ofToString((int)y), (int) (width*(amplitudeNumber - (onsetIndex - y))),
	 (int) ((TEXT_HEIGHT+2) + (screenHeight - (scale_factor*(0 - minimumValue)))) );
	}
	
}//end label 
//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y ){



}

//--------------------------------------------------------------
void testApp::mouseDragged(int x, int y, int button){
if ((x - mouseDownX) > 50 ){
mouseDownX = x;
}

if ((x - mouseDownX) < -50){

mouseDownX = x;
}


}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){

mouseDownX = x;
mouseDownY = y;

}

//--------------------------------------------------------------
void testApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::windowResized(int w, int h){

	screenWidth = (float) ofGetWidth();
	screenHeight = (float) ofGetHeight();
	
}

