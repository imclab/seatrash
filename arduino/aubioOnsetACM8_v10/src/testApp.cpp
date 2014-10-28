#include "testApp.h"
//#include "math.h" 

#define SAMPLING_FREQUENCY 44100
#define FOURIER_LENGTH 2048
#define TEXT_HEIGHT 10


//CONTROLS:
//Q: toggle matrix view
//D autocorrelation
//Z,X  zoom in and out of onset function
//+,- slow zoom in and out
//E go to Entropy/Energy based max
//M: Go to strict maximum
//P,O zoom in and out of autocorrelation



//works with aubioonset~.maxhelp

//to do:
//make sure longer lags not penalised. - DONE

//look at the transitions - seems to prefer going to the rigt than the left, seems not to want to change tempo that easily

//optimise the way the update is done so we keep track of a square round the values and move this slowly
//only increasing a row at a time.
//moving to the side - causes multiplication by 0.5

//include beat positions for offbeat etc

//post the entropy measure for each tempo - choose combo of high values and high entropy (peakiness)
//entropy is in yellow - measured as combo of high energy and low entropy for that tempo


//use some kind of supression - when we "know" the beat, can we supress energy in non beat locations

//following a beat hypothesis means other beat locations can be interpreted in terms of our tempo/phase
//suppress info that would otherwise destabilise us

//--------------------------------------------------------------
void testApp::setup(){
	// listen on the given port
//	cout << "listening for osc messages on port " << PORT << "\n";
	sender.setup( HOST, SENDER_PORT );
	receiver.setup( PORT );

	current_msg_string = 0;
	mouseX = 0;
	mouseY = 0;
	mouseButtonState = "";


	samplingRate = 44100;
	framesPerSecond = 44100 / 512;//i.e. this many frames per second
	
	outputGraphics = false;
	
	maximumDetectionFunction = 20;
	minimumDetectionFunction = -20;
	runningOnsetDetMax = 500;
	screenWidth = (float) ofGetWidth();
	screenHeight = (float) ofGetHeight();
	
	mouseDownX = 0;
	mouseDownY = 0;
	
	amplitudeNumber = 256;//number of amplitudes shown on screen
		
	maxValue = 1.0;
	
	detectionType = "complex";
	lastOnsetDetectionValue;
	
	logMode = false;
	
//	midiMode = true;
	
	resetMaxima = false;
	
	reIndexFlag = false;

	ofBackground(255,255,255);
	
	rawOnsetIndex = 0;
	autocorrelationMode == false;
	autocorrelationLength = 256;
	autocorrelationHopsize = 64;
	autocorrelationMaximum = 3;

	autocorrelationDisplayMax = autocorrelationLength/4;//i.e. 64
	autocorrelationDisplayMin = 1;

	autoCorrMatrixMode = true;
	autoCorrTempoMinimum = 34;
	tempoIndexMin = 0;
	tempoIndexMax = 35;
	phaseIndexMax = tempoIndexMax + autoCorrTempoMinimum;//
	phaseIndexMin = 0;
	followBeatPosition = 0;
	offBeatProportion = 0;
	ACMupdateFactor = 0.1f;
	debugString = "nothing";
	thresholdAboveMedian = 1.2;
startFrameIndex = 0;
	aubioHopSize = 512;
	followGaussianStdDev = 8;
	followPhaseStdDev = 7;//was 6 when running tests
	followTempoStdDev = 3.5;//was 2.5 when running tests
	followPhaseWidthToTest = 8;
	followTempoWidthToTest = 3;
	
	log_of_two = log(2);
	peakEntropyValue = 0;
	autoCorrTempoMaximum = autoCorrTempoMinimum + AUTO_CORR_DIMENSIONS;
	
	int x,y;
	for (x=0;x<AUTO_CORR_DIMENSIONS;x++){
		for (y=0;y<AUTO_CORR_DIMENSIONS;y++){
		autoCorrMatrix[x][y] = 0;//ofRandomuf()/10;
		}
		autoCorrTempos[x] = autoCorrTempoMinimum+x;//set tempo in frames for each tempo lag
	}
	transitionWidth = 4;
	transitionPowerValue = 2;
	transitionStdDev = 1.5;
	transitionTempoStdDev = 1;
	setTransitionMatrix();
	followProbabilityNoiseFloor= 0.1;
	
	runningAverageValue = 0;
	runningAverageLength = 6;
	runningAverageGap = 4;

	maximumRayleigh = exp(- 0.5);
	maximumRayleigh /= 43.0;
	
/*	
	int i;
	for (i = 0;i< transitionWidth;i++){
	transitionProbability[i] = 1 - (i/transitionWidth);	
	}
*/
//	transitionProbability[0] = 1;
//	transitionProbability[1] = 0.8;
//	transitionProbability[2] = 0.6;
//	transitionProbability[3] = 0.5;
//	transitionProbability[4] = 0.25;	
	tempoOutput = 10;
	phaseOutput = 10;
	maxTempoIndex = 0;
	maxPhaseIndex = 0;
	rawOnsetMedian = 100;
	bSnapshot = false;
	snapCounter = 0;
	
	entropyTemposIndex = 0;
	autoSetTempo = false;	
	entropyCheckString = " x ";
					
	colourFactor = 2;//maginifies the acm green colour	
	
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

			if (m.getAddress() == "/aubioData" ){
			
				if( m.getArgType( 0 ) == OFXOSC_TYPE_FLOAT ){
				
				onsetIndex++;
				onsetRecorded[onsetIndex] = false;
				
					if (onsetIndex >= NUM_DETECTION_SAMPLES){
					onsetIndex = 0;
					initialiseMatrices();
					}
				
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
					updateACM();
					updateFollow();
					
				if (rawOnsetFunction[rawOnsetIndex] > runningOnsetDetMax){
				runningOnsetDetMax *= 0.8;
				runningOnsetDetMax += (0.2 * rawOnsetFunction[rawOnsetIndex]);
				}
				else{
				runningOnsetDetMax *= 0.999;
				}
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
		autocorrelationMaximum = 3;
		}
		
		if (m.getAddress() == "/updateRatio" ){
			
				if( m.getArgType( 0 ) == OFXOSC_TYPE_FLOAT ){
					float value = m.getArgAsFloat(0);
						if (value > 0 && value < 0.5)
						ACMupdateFactor = value;
					}
			}//end update ratio
				
			if (m.getAddress() == "/autoSetToEntropy"){
				followTempoIndex = peakEntropyTempo;
				followPhaseIndex = peakEntropyPhase;
				autoSetTempo = true;
				if (checkEntropyTempos() == true){
					followTempoIndex = peakEntropyTempo;
					followPhaseIndex = peakEntropyPhase;
					setACMprintString();
					autoSetTempo = false;
				}
			}//end set to entropy tempo

		if (m.getAddress() == "/resetSong"){			
				initialiseMatrices();
				resetMatrix();
				}
				
	}//end while
	
	
	if ((rawOnsetIndex % autocorrelationHopsize) == 0){
	calculateAutocorrelation();
	}
	


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
	
if (f > rawOnsetMedian){
	rawOnsetMedian *= 1.01;
	}
		if (f < rawOnsetMedian){
	rawOnsetMedian *= 0.99;
	}
	
	//update the running average
	if (rawOnsetIndex > runningAverageGap){
	runningAverageValue *= runningAverageLength;
	runningAverageValue -= runningAverage[runningAverageIndex];
	runningAverage[runningAverageIndex] = rawOnsetFunction[rawOnsetIndex - runningAverageGap];//was f (new det val)
	runningAverageValue += rawOnsetFunction[rawOnsetIndex - runningAverageGap];
	runningAverageValue /= runningAverageLength;
		if (runningAverageIndex == runningAverageLength)
		runningAverageIndex = 0;
		}
	
}

void testApp::calculateAutocorrelation(){

	int i, lag;
	for (lag = 0;lag < autocorrelationLength;lag++){
		
		autocorrelation[lag] = 0;
		
		for (i = 0; i < autocorrelationLength-lag;i++){

	if (onsetIndex - i - lag > 0)
		autocorrelation[lag] += rawOnsetFunction[onsetIndex - i] * rawOnsetFunction[onsetIndex-i - lag];

		}//end for i

	autocorrelation[lag] /= autocorrelationLength - lag;//normalise so equally weighted


//have placed maximum check inside the autocorr function 
//could simplify by only checking first value, which should be fairly high
//if (autocorrelation[lag] > autocorrelationMaximum)
//autocorrelationMaximum = (int) autocorrelation[lag];


	}//end for lag
if (autocorrelation[0] > autocorrelationMaximum)
autocorrelationMaximum = (int) autocorrelation[0];

}


void testApp::updateACM(){
int tempoIndex, phaseIndex;
int localPhaseIndex, localTempoIndex;//use for the local maximum
int phaseOffset, tempoOffsetIndex, autoCorrTempo, tempoOffsetPhaseIndex, autoCorrOffsetTempo, offBeatPhaseIndex;
float newAutoCorrMatrixValue, tmpValue;
float debugValue;
entropyMinimum = 1000000;

	for (tempoIndex = tempoIndexMin;tempoIndex < tempoIndexMax; tempoIndex++){//i.e. 0 to 40
		
	phaseIndex = acmIndex % autoCorrTempos[tempoIndex];//current phase at this tempo
	autoCorrTempo = autoCorrTempos[tempoIndex];//MAP THE INDEX TO TEMPO AT THAT INDEX
	debugValue = autoCorrMatrix[tempoIndex][ phaseIndex];
	storedAutoCorrValues[tempoIndex][phaseIndex%TRANSITION_SIZE] = autoCorrMatrix[tempoIndex][ phaseIndex];
	//store before we update so we can have transitions from this value to the next det function coming in
	
	newAutoCorrMatrixValue = autoCorrMatrix[tempoIndex][ phaseIndex];
	energySum[tempoIndex] -= autoCorrMatrix[tempoIndex][ phaseIndex];//subtract old energy value for this position
	
	tempoOffsetIndex = tempoIndex;
	//for (tempoOffsetIndex = max((tempoIndex - 1), autoCorrTempoMinimum);tempoOffsetIndex < min((tempoIndex + 1), autoCorrTempoMaximum); tempoOffsetIndex++){
	for (tempoOffsetIndex = max((tempoIndex - 1), tempoIndexMin);tempoOffsetIndex < min((tempoIndex + 1), tempoIndexMax); tempoOffsetIndex++){
	//tempo offset Index allows us to look in window above and below for updating the vale in the centre
		//tempo transition by one frame only.

		tempoOffsetPhaseIndex = acmIndex % autoCorrTempos[tempoOffsetIndex];//the phase index of the offset tempo 
		autoCorrOffsetTempo = autoCorrTempos[tempoOffsetIndex];// the tempo of this
		
	//PHASE ONLY CHECK		
	//add in correction for faster tempos so all are equally weighted.
//			for (phaseOffset = autoCorrOffsetTempo - TRANSITION_SIZE;phaseOffset < autoCorrOffsetTempo + TRANSITION_SIZE;phaseOffset++){
		
			
			int phaseAdjust;
			for (phaseAdjust = -1* TRANSITION_SIZE;phaseAdjust < TRANSITION_SIZE;phaseAdjust++){	
				
				phaseOffset =	autoCorrOffsetTempo + phaseAdjust;
				
				if (phaseAdjust >= 0 || tempoOffsetIndex < tempoIndex){
				tmpValue =  autoCorrMatrix[tempoOffsetIndex][(tempoOffsetPhaseIndex+phaseOffset)%autoCorrOffsetTempo] 
				* transitionProbability[abs(phaseAdjust)]//transition of phase : was 	* transitionProbability[abs(autoCorrOffsetTempo - phaseOffset)] acm7
				* transitionTempoProbability[abs(tempoOffsetIndex - tempoIndex)];//transition of tempo
				}
				else{//test this...
				tmpValue =  storedAutoCorrValues[tempoOffsetIndex][(tempoOffsetPhaseIndex+phaseOffset)%TRANSITION_SIZE]
				//using the stored value, not the recently updated one as this could use the same onset twice in a row 
				* transitionProbability[abs(phaseAdjust)]//transition of phase : was 	* transitionProbability[abs(autoCorrOffsetTempo - phaseOffset)] acm7
				* transitionTempoProbability[abs(tempoOffsetIndex - tempoIndex)];//transition of tempo
				
				}
						if ( tmpValue > newAutoCorrMatrixValue){
					newAutoCorrMatrixValue = tmpValue;//store maximum in  our range
					//wastes calculation here - only need to do the new row and column
					//work from bottom corner up and outwards
					}
			}//end for phaseOffset		
			
		}//end for tempoOffset
	 
	 //offBeatPhaseIndex = (acmIndex + (int)(autoCorrTempos[tempoIndex]/2))% autoCorrTempos[tempoIndex];
	 
	autoCorrMatrix[tempoIndex][ phaseIndex] = newAutoCorrMatrixValue * (1 - ACMupdateFactor);
//	autoCorrMatrix[tempoIndex][ offBeatPhaseIndex] *= (1 - (ACMupdateFactor*offBeatProportion));//offBeat also gets increased
	
		if (rawOnsetFunction[rawOnsetIndex] > rawOnsetMedian*thresholdAboveMedian){
/*		autoCorrMatrix[tempoIndex][ phaseIndex] += 
								(ACMupdateFactor * rawOnsetFunction[rawOnsetIndex] * 
								autoCorrTempo / (autoCorrTempoMaximum * maximumDetectionFunction) );
*/

		
		if (rawOnsetFunction[rawOnsetIndex] > runningAverageValue )
		{
			processedOnsetFunction[rawOnsetIndex] = rawOnsetFunction[rawOnsetIndex]	- runningAverageValue;
			
			//now inside the running average code
			autoCorrMatrix[tempoIndex][ phaseIndex] += 
									(ACMupdateFactor * 
									(rawOnsetFunction[rawOnsetIndex] / runningOnsetDetMax) *
									rayleigh (autoCorrTempo + autoCorrTempoMinimum, 43) *
									autoCorrTempo / autoCorrTempoMaximum  );
					//taking out the subtraction of median
					//weighting by rayleigh distribution
	
				}//if raw onset > running average
				else{
				processedOnsetFunction[rawOnsetIndex] = 0;
				}											

		}//i.e. above median threshold
		else{
		processedOnsetFunction[rawOnsetIndex] = 0.05;
		}
		
		
			
			
			//entropy measured relative to sum of the rows
	
		energySum[tempoIndex] += autoCorrMatrix[tempoIndex][ phaseIndex];
		
			entropy[tempoIndex] = 0;int tmp_phase;
			for (tmp_phase = 0;tmp_phase < autoCorrTempos[tempoIndex];tmp_phase++){
			entropy[tempoIndex] -= (autoCorrMatrix[tempoIndex][ tmp_phase]/energySum[tempoIndex]) *
							log(autoCorrMatrix[tempoIndex][ tmp_phase]/energySum[tempoIndex]) / log_of_two;
						}//end for entropy sum
			entropy[tempoIndex] /= log(autoCorrTempos[tempoIndex]);//normalise entropy
						
						if (entropy[tempoIndex] < entropyMinimum){
						entropyTempo = tempoIndex;
						entropyMinimum = entropy[tempoIndex];
						}
						
		//check entropy peak - combo of low entropy and high energy
		
		if (tempoIndex == peakEntropyTempo && entropy[peakEntropyTempo] > 0){		
		peakEntropyValue = autoCorrMatrix[peakEntropyTempo][peakEntropyPhase] / entropy[peakEntropyTempo];
		
		if (phaseIndex == peakEntropyPhase && rawOnsetIndex - entropyBeatLastSent > autoCorrTempos[peakEntropyTempo]/2){
		//send entropy beat back to max
				ofxOscMessage m;
				m.setAddress( "/entropyBeat" );
				m.addIntArg( 1 );
				sender.sendMessage( m );
				entropyBeatLastSent = rawOnsetIndex;		
		//store entropy tempo
		entropyTemposIndex++;
			if (entropyTemposIndex >= 60) 
				entropyTemposIndex = 0;
		entropyTempos[entropyTemposIndex] = peakEntropyTempo;
						//if we need to set tracked tempo to the entropy tempo
				if (autoSetTempo == true && checkEntropyTempos() == true){
					followTempoIndex = peakEntropyTempo;
					followPhaseIndex = peakEntropyPhase;
					setACMprintString();
					autoSetTempo = false;
				}
		
		}//end send entropy beat
		
		}//end if on entropy value
		
		//check for new entropy max
		if ( entropy[tempoIndex] > 0 && (autoCorrMatrix[tempoIndex][phaseIndex] / entropy[tempoIndex]) > peakEntropyValue){
		
		//if beat due then send entropy beat back to max		
		if (rawOnsetIndex - entropyBeatLastSent > autoCorrTempos[peakEntropyTempo]/2){
				ofxOscMessage m;
				m.setAddress( "/entropyBeat" );
				m.addIntArg( 1 );
				sender.sendMessage( m );
				entropyBeatLastSent = rawOnsetIndex;
			}//end send entropy beat

				
			peakEntropyTempo = tempoIndex;
			peakEntropyPhase = phaseIndex;
			peakEntropyValue = autoCorrMatrix[tempoIndex][phaseIndex] / entropy[tempoIndex];
			setACMprintString();
			
			}//end if
	
		
		//check for max value
		if (autoCorrMatrix[tempoIndex][ phaseIndex] > autoCorrMatrix[maxTempoIndex][maxPhaseIndex]){
		maxTempoIndex = tempoIndex;
		maxPhaseIndex = phaseIndex;
		}
		
				if (tempoIndex == followTempoIndex && phaseIndex == followPhaseIndex){
				float newEnergy = (ACMupdateFactor * 
							(rawOnsetFunction[rawOnsetIndex] / runningOnsetDetMax) * 
								autoCorrTempo / autoCorrTempoMaximum );
					
				if (rawOnsetIndex - beatLastSent > autoCorrTempos[followTempoIndex]/2){	
				//send OSC message back to Max							
				ofxOscMessage m;
				m.setAddress( "/acmBeat" );
				m.addIntArg( 1 );
				sender.sendMessage( m );
				beatLastSent = rawOnsetIndex;		
				}		
								
			debugString = "Follow Value : ";
			debugString += ofToString(autoCorrMatrix[tempoIndex][phaseIndex], 4);
				debugString += "New energy : ";
			debugString += ofToString(rawOnsetFunction[rawOnsetIndex], 4);
//			debugString += ".  addition to ac matrix ";
//			debugString += ofToString(, 3);
			debugString += distanceCheckString;//

		/*	debugString += ". energySum ";
			debugString += ofToString(energySum[tempoIndex], 3);
				debugString += ". entropy ";
			debugString += ofToString(entropy[tempoIndex], 3);
			debugString += ". E tempo ";
			debugString += ofToString(entropyTempo);
			debugString += ". entropy Min ";
			debugString += ofToString(entropyMinimum, 3);
			debugString += "rayleigh 20 : ";
			debugString += ofToString(rayleigh(20, 43) , 3);	
*/
			
			//delete debugValue
	//		debugString += " Run Av: ";
	//		debugString += ofToString(runningAverageValue, 3);
			
			//debugString += "Guass test: ";
		//	float val = 80;
		//	val = gaussian(val, 0.4, followGaussianStdDev);
	//		debugString += ofToString(val,2);
		
			}		//end if follow tempo index
			
	}//end for tempoIndex

	
	if (acmIndex % autoCorrTempos[tempoOutput] == phaseOutput){
	acmOnsetRecorded[onsetIndex] = true;
	}

	if (acmIndex % autoCorrTempos[followTempoIndex] == followPhaseIndex && (onsetIndex - lastFollowOnsetIndex) > followTempo*0.6){
	acmFollowOnsetRecorded[onsetIndex] = true;
	onsetDifference = (onsetIndex - lastFollowOnsetIndex);
	lastFollowOnsetIndex = onsetIndex;
//	followBeatPosition++;
//	followBeatPosition = followBeatPosition%4;
	}
	
	
	if (acmIndex % autoCorrTempos[maxTempoIndex] == maxPhaseIndex){
	maxACMOnsetRecorded[onsetIndex] = true;
	}

acmIndex++;
}

void testApp::updateFollow(){
/*
int testTempoIndex, testPhaseIndex;
float currentMax = autoCorrMatrix[followTempoIndex][followPhaseIndex];
float distanceFromCurrentMax, probabilityTransition;
bool followRecentlyUpdated = false;
	for (testTempoIndex = tempoIndexMin;testTempoIndex < tempoIndexMax; testTempoIndex++){

//calculte the probability of transition from current location: followTempo, followPhase to
//the test location
	//testPhaseIndex = acmIndex % autoCorrTempos[followTempoIndex];//crucial change from 8_v1 - relative to the follow index

//calculate the probability of transition from current location: followTempo, followPhase to
//the peak entropy value
				//test now so this is acm at test phase
	testPhaseIndex = (  
					(acmIndex % autoCorrTempos[followTempoIndex]) 
					+ autoCorrTempos[followTempoIndex] // so not negative
					) 
					% autoCorrTempos[followTempoIndex];//crucial change from 8_v1 - relative to the follow index
//test phase in terms of the follow index


	int actualTestPhaseIndex = acmIndex % autoCorrTempos[testTempoIndex];
	//the phase is relative to the follow phase - for current squares at each tempo
//	int tmpFollowPhaseIndex = acmIndex % autoCorrTempos[followTempoIndex];
	int minimumTempo = min(testPhaseIndex, followPhaseIndex);
	int maximumTempo = max(testPhaseIndex, followPhaseIndex);
	//either the distance is the easy one [....x....y.........] - here 5
	//or the large on which is from [.........y.............x.............] i.e. 11 here 
	//otherwise you may think further away when wrapped round the end
	distanceFromCurrentMax = min(
	(followPhaseIndex - testPhaseIndex)*(followPhaseIndex - testPhaseIndex), 
	((minimumTempo + autoCorrTempos[testTempoIndex] - maximumTempo) % autoCorrTempos[testTempoIndex]) *
	((minimumTempo + autoCorrTempos[testTempoIndex] - maximumTempo ) % autoCorrTempos[testTempoIndex]) 
	);
//	followProbNoiseFloor = 0.1
	probabilityTransition = (1-followProbabilityNoiseFloor) * gaussian(sqrt(distanceFromCurrentMax), 0, followPhaseStdDev);
	
	probabilityTransition *= gaussian((followTempoIndex - testTempoIndex), 0, followTempoStdDev);

//	distanceFromCurrentMax = sqrt(distanceFromCurrentMax);
	
	//probabilityTransition = (1-followProbabilityNoiseFloor) * gaussian(distanceFromCurrentMax, 0, followGaussianStdDev);
	
	probabilityTransition += followProbabilityNoiseFloor ;
	
	if (autoCorrMatrix[testTempoIndex][actualTestPhaseIndex] * probabilityTransition > autoCorrMatrix[followTempoIndex][followPhaseIndex]){
	
	followString = "UPDATE FOLLOW ";	
	followString += "[";
	followString += ofToString(followTempoIndex);
	followString += "][";
	followString += ofToString(followPhaseIndex);
	followString += "] to [";
	followString += ofToString(testTempoIndex);
	followString += "][";
	followString += ofToString(actualTestPhaseIndex);
	followString += "]";
		
	followTempoIndex = testTempoIndex;
	followPhaseIndex =  actualTestPhaseIndex;//another crucial change to work with the above
	followTempo = autoCorrTempos[followTempoIndex];
	
			if (rawOnsetIndex - beatLastSent > autoCorrTempos[followTempoIndex]/2){	
				//send OSC message back to Max							
				ofxOscMessage m;
				m.setAddress( "/acmBeat" );
				m.addIntArg( 1 );
				sender.sendMessage( m );
				beatLastSent = rawOnsetIndex;		
				}		
	followRecentlyUpdated = true;			
	}//end if new follow peak
	
	
	}//end for
*/
	
	testFullTransitions();//tests local phaseshift along same tempo
	
	
outputPhaseDifference = phaseDifferenceFromFollowed();
differenceFrom(peakEntropyTempo, peakEntropyPhase);



}

//--------------------------------------------------------------
void testApp::draw(){

if (autoCorrMatrixMode == false){
		
		if (autocorrelationMode == false){
		drawOnsetFunction();
		printInfo();
		}
		else{
		drawAutocorrelation();
		}
	}
	else{
	drawACM();
	}
	
	if (bSnapshot == true){
		// grab a rectangle at 200,200, width and height of 300,180
		img.grabScreen(0,0,screenWidth,screenHeight);
		char fileName[255];
		sprintf(fileName, "combFilter_%0.3i.png", snapCounter);
		img.saveImage(fileName);
		//sprintf(snapString, "saved %s", fileName);
		snapCounter++;
		bSnapshot = false;
	}


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



void testApp::drawOnsetFunction(){
int drawIndex = onsetIndex;
int rawDrawIndex = rawOnsetIndex;
		if (pauseMode == true){
		drawIndex = pausedIndex;
		rawDrawIndex = pausedRawIndex;
		}
	
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
	
	int Xindex = (drawIndex-Xvalue) ;
	int previousIndex = (Xindex-1);
	
	ofSetColor(55,100,255);

	ofLine((int) (width*(amplitudeNumber - Xvalue - 1)), screenHeight - (scale_factor*(onsetFunction[previousIndex]- minimumValue)), 
			(int) (width*(amplitudeNumber - Xvalue)),  screenHeight - (scale_factor*(onsetFunction[Xindex]- minimumValue)) );

	if (onsetRecorded[Xindex] == true){
		ofSetColor(255,100,255);
		ofCircle(width*(amplitudeNumber - Xvalue), screenHeight - (scale_factor*(onsetFunction[Xindex]- minimumValue)) , 3);
	}
	
		if (acmOnsetRecorded[Xindex] == true){
		ofSetColor(5,0,255);//top of screen - the user selected onset position
		ofCircle(width*(amplitudeNumber - Xvalue), 0 , 5);
		}
		
			if (acmFollowOnsetRecorded[Xindex] == true){
			
				ofSetColor(255,0,0);				
//		ofCircle(width*(amplitudeNumber - Xvalue), 20 , 5);
		ofCircle(width*(amplitudeNumber - Xvalue), screenHeight - (scale_factor*(rawOnsetMedian - minimumValue)) , 5);
		}
		
		if (maxACMOnsetRecorded[Xindex] == true){
		ofSetColor(255,255,255);//the maximal value from the acm matrix
		ofCircle(width*(amplitudeNumber - Xvalue), 20 , 5);
//		ofCircle(width*(amplitudeNumber - Xvalue), screenHeight - (scale_factor*(rawOnsetMedian - minimumValue)) , 5);
		}
		
		
	
//specDiffOnsets	
	ofSetColor(55,100,55);
 Xindex = (rawDrawIndex-Xvalue) ;
 previousIndex = (Xindex-1);

	ofLine((int) (width*(amplitudeNumber - Xvalue - 1)), screenHeight - (scale_factor*(rawOnsetFunction[previousIndex]- minimumValue)), 
			(int) (width*(amplitudeNumber - Xvalue)),  screenHeight - (scale_factor*(rawOnsetFunction[Xindex]- minimumValue)) );

//draw the processed function	
	ofSetColor(200,200,0);
ofLine((int) (width*(amplitudeNumber - Xvalue - 1)), screenHeight - (scale_factor*(processedOnsetFunction[previousIndex]- minimumValue)), 
			(int) (width*(amplitudeNumber - Xvalue)),  screenHeight - (scale_factor*(processedOnsetFunction[Xindex]- minimumValue)) );
	


	if (rawOnsetRecorded[Xindex] == true){
		ofSetColor(255,100,0);
		ofCircle(width*(amplitudeNumber - Xvalue), screenHeight - (scale_factor*(rawOnsetFunction[Xindex]- minimumValue)) , 3);
	}
	
	}//end for Xvalue (across the recent observations of osc data)

	ofSetColor(55,150,55);
ofLine(0, screenHeight - (scale_factor*(rawOnsetMedian- minimumValue)), 
screenWidth,  screenHeight - (scale_factor*(rawOnsetMedian- minimumValue)) );
	
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
		
	//label x axis
	stepSize = 20;//need to make sure not too many of these:
	
	while((amplitudeNumber / stepSize) < 4)
	stepSize /= 2;
	
	while ((amplitudeNumber / stepSize) > 8)
	stepSize *= 2;

	int labelIndex = drawIndex - (drawIndex % stepSize);
	for (int y = labelIndex; y > drawIndex - amplitudeNumber; y -= stepSize){
		ofDrawBitmapString( ofToString((int)y), (int) (width*(amplitudeNumber - (drawIndex - y))),
	 (int) ((TEXT_HEIGHT+2) + (screenHeight - (scale_factor*(0 - minimumValue)))) );
	}
	//end label
}//end draw


////draw autocorrelation

void testApp::drawAutocorrelation(){
		
	float width = screenWidth / (float) (autocorrelationDisplayMax - autocorrelationDisplayMin);	
	
	float maximumValue = autocorrelationMaximum;
	float minimumValue = 0;
	/*
	int correlationIndex;
		for (correlationIndex = 0;correlationIndex < autocorrelationLength;correlationIndex++){
			if (autocorrelation[correlationIndex] > maximumValue)
			maximumValue =  autocorrelation[correlationIndex] ;
		}//end for
	*/	
	float difference = maximumValue - minimumValue;
	float scale_factor = screenHeight/ difference;
	
	//draw axis
	ofSetColor(255,255,255);
//	ofLine(0, screenHeight - (scale_factor*(0 - minimumValue)), 
//			(int) (width*(amplitudeNumber)),  screenHeight - (scale_factor*(0 - minimumValue)) );

	
	ofSetColor(0,0,255);
	
	for (int Xvalue = autocorrelationDisplayMin+1;Xvalue < autocorrelationDisplayMax; Xvalue++){
	
	int Xindex = Xvalue ;
	int previousIndex = Xindex-1;

	ofLine((int) (width*(Xvalue - 1 - autocorrelationDisplayMin)), screenHeight - (scale_factor*(autocorrelation[Xvalue-1] - minimumValue)), 
			(int) (width*(Xvalue - autocorrelationDisplayMin)),  screenHeight - (scale_factor*(autocorrelation[Xvalue]- minimumValue)) );

	}//end for Xvalue (across the recent observations of osc data)

	
	//label y axis
	int axisHeight, stepSize;
	ofSetColor(255,255,255);
	stepSize = 1000;

	while((difference / stepSize) < 3)
	stepSize /= 2;
	
	while ((difference / stepSize) > 7)// maximum 6 numbers to display
	stepSize *= 2;

	
	for (axisHeight = 0; axisHeight < maximumValue; axisHeight += stepSize){
	ofDrawBitmapString( ofToString((int)axisHeight), ofGetWidth()-50,
	 (int) ((TEXT_HEIGHT/2) +(screenHeight - (scale_factor*(axisHeight- minimumValue)))) );
	}
/*	
	for (axisHeight = max(0, (int)minimumDetectionFunction); axisHeight > min(0, (int)minimumDetectionFunction); axisHeight -= stepSize){
	ofDrawBitmapString( ofToString((int)axisHeight), ofGetWidth()-50,
	 (int) ((TEXT_HEIGHT/2) +(screenHeight - (scale_factor*(axisHeight- minimumValue)))) );
	}
*/	
	//label x axis
	stepSize = 5;//need to make sure not too many of these:
	int autocorrelationFrameNumber = (autocorrelationDisplayMax -	autocorrelationDisplayMin) ;
	while((autocorrelationFrameNumber / stepSize) < 4)
	stepSize /= 2;
	
	while ((autocorrelationFrameNumber / stepSize) > 10)
	stepSize *= 2;

	int labelIndex = autocorrelationDisplayMin - ( autocorrelationDisplayMin % stepSize);
	for (int x = labelIndex; x < autocorrelationDisplayMax; x += stepSize){
	ofSetColor(255,255,255);
		ofDrawBitmapString( ofToString((int)x), (int) (width*(x- autocorrelationDisplayMin)),
	 (int) ((TEXT_HEIGHT+2) + screenHeight - 16) );
	
	ofSetColor(0,155,255);//lag of x frames is a beat
	//=> there are framesPerSecond * 60 (one minutes worth) / x 
	if (x > 0){
			ofDrawBitmapString( ofToString((int) (framesPerSecond * 60 / x)), (int) (width*(x- autocorrelationDisplayMin)),
	 (int) ((TEXT_HEIGHT+2) + screenHeight - 32) );
		ofLine( (int) (width*(x- autocorrelationDisplayMin)), screenHeight, (int) (width*(x- autocorrelationDisplayMin)), screenHeight - 32 );
	}
	 
	} 
	//end label
	string autocorrString;
	autocorrString = "Auto Min = ";
	autocorrString += ofToString(autocorrelationDisplayMin);
		autocorrString += ".  Auto Max = ";
			autocorrString += ofToString(autocorrelationDisplayMax);
		autocorrString += ". width ";
		autocorrString += ofToString(width, 2);

		ofDrawBitmapString( autocorrString, 20 ,
	 (int) ((TEXT_HEIGHT+2) + screenHeight - 52) );
	 
	 
}
//end draw autocorrelation



//DRAW ACM MATRIX
void testApp::drawACM(){

//aims to make the maximum the highest / brightest colour
//colourFactor += ((1 / autoCorrMatrix[maxTempoIndex][maxPhaseIndex]) - colourFactor));
colourFactor = 3;
	int width = screenWidth / (phaseIndexMax - phaseIndexMin);
	int height = screenHeight / (tempoIndexMax - tempoIndexMin);//screen is only between tempo range we're interested in
	int x,y;
	for (y = tempoIndexMin;y < (tempoIndexMax - tempoIndexMin);y++){
	for (x = phaseIndexMin;x < autoCorrTempos[y];x++){
	//for (x = phaseIndexMin;x < (phaseIndexMax - phaseIndexMin)


	
	ofSetColor(255*autoCorrMatrix[y][x]*colourFactor,255*autoCorrMatrix[y][x]*colourFactor,255*autoCorrMatrix[y][x]*colourFactor);//can include /autoCorrMatrix[maxTempoIndex][maxPhaseIndex]
	
	
	if (x==maxPhaseIndex && y == maxTempoIndex){
//		if (abs(acmIndex % autoCorrTempos[maxTempoIndex] - maxPhaseIndex) < 5)
//		ofSetColor(255,255,255);//*autoCorrMatrix[y][x]);
		}//end if max point

	if (x == peakEntropyPhase && y == peakEntropyTempo){
		if (abs(acmIndex % autoCorrTempos[peakEntropyTempo] - peakEntropyPhase) < 5)
		ofSetColor(255,255,0); //*autoCorrMatrix[y][x]);		
		}//end if max entropy-energy combo point

	if (x == followPhaseIndex && y == followTempoIndex){
		if (abs(acmIndex % autoCorrTempos[followTempoIndex] - followPhaseIndex) < 5)
		ofSetColor(0,0,255); //*autoCorrMatrix[y][x]);		
		}//end if max point

	if (x==phaseOutput && y == tempoOutput){
//			if (abs(acmIndex % autoCorrTempos[tempoOutput] - phaseOutput) < 5){
//			ofSetColor(0,0,255);//*autoCorrMatrix[y][x]);
			}//if beat at mouse cursor


	ofRect(x*width,screenHeight - ((y+1)*height),width,height);
	}
	}

//draw tempos
ofSetColor(255,255,0);
ofNoFill();
ofCircle((followPhaseIndex+0.5)*width,screenHeight - ((followTempoIndex+0.5)*height),50);
ofFill();

ofSetColor(0,0,255);
int tempo = 0;
float binHeight = (float) screenHeight / (float) (tempoIndexMax+1.0);
for (tempo = 0;tempo < tempoIndexMax;tempo++){
string tempoString = "";
float period = (autoCorrTempoMinimum + (tempo)) * 	aubioHopSize * 1000 / (float) 44100;//period in msec

tempoString += ofToString((60000/period),1 );

ofDrawBitmapString( tempoString, 20 ,
	 (int) ( screenHeight - ((tempo+1)*height) +16 ));
}
//end tempos

/*
ofSetColor(255,255,0);
ofDrawBitmapString( transitString, 20 ,
	 (int) ((TEXT_HEIGHT+2) + screenHeight - 52) );
	 
	 	ofDrawBitmapString( followString, 20 ,
	 (int) ((TEXT_HEIGHT+2) + screenHeight - 82) );
*/	 
	 
	 
	 
/*		ofDrawBitmapString( acmString, 20 ,
	 (int) ((TEXT_HEIGHT+2) + screenHeight - 52) );
	 
	 ofDrawBitmapString( debugString, 20 ,
	 (int) ((TEXT_HEIGHT+2) + screenHeight - 82) );


	 ofDrawBitmapString( distanceCheckString, 20 ,
	 (int) ((TEXT_HEIGHT+2) + screenHeight - 142) );

	 ofDrawBitmapString( entropyCheckString, 20 ,
	 (int) ((TEXT_HEIGHT+2) + screenHeight - 112) );
	 */
}
//end draw ACM Matrix

//--------------------------------------------------------------
void testApp::keyPressed  (int key){

	if (key == OF_KEY_UP){

if (autocorrelationDisplayMax > autocorrelationDisplayMin + 9){
	autocorrelationDisplayMin += 2;
	autocorrelationDisplayMax -= 2;
	}
	
	}

	if (key == OF_KEY_DOWN ){
if (autocorrelationDisplayMin > 4){
	autocorrelationDisplayMin -= 2;
	autocorrelationDisplayMax += 2;
	}
	}		
	
	if (key == OF_KEY_LEFT ){
	if (autocorrelationDisplayMin > 4 ){
	autocorrelationDisplayMin -= 2;
	autocorrelationDisplayMax -= 2;
	}
	
	}		

	if (key == OF_KEY_RIGHT ){
if (autocorrelationDisplayMax < autocorrelationLength - 4){
	autocorrelationDisplayMin += 2;
	autocorrelationDisplayMax += 2;
	}
	
	}		

	if (key == 'd' || key == 'D' ){
		autocorrelationMode = !autocorrelationMode;
	}		
	
		if (key == 'q' || key == 'Q' ){
	autoCorrMatrixMode = !autoCorrMatrixMode;
	}


	if (key == ']' || key == '}' ){
	if (transitionWidth < TRANSITION_SIZE - 1){
		transitionWidth++;
		setTransitionMatrix();
		setACMprintString();
		}
	}	

	if (key == '[' || key == '{' ){
		if (transitionWidth > 1){
		transitionWidth--;
		setTransitionMatrix();
		setACMprintString();
		}
	}

	
	if (key == ' '){
	pauseMode = !pauseMode;
	if (pauseMode == true){
	pausedIndex = onsetIndex;
	pausedRawIndex = rawOnsetIndex;
	}
	
	}		

	if (key == 'L' || key == 'l'){
	logMode = !logMode;
	}

	if (key == 'o' || key == 'O'){
	float addOn = ((autocorrelationDisplayMax - autocorrelationDisplayMin) *0.25);
	if ((autocorrelationDisplayMax < (autocorrelationLength - addOn)) && (autocorrelationDisplayMin > addOn)){
	autocorrelationDisplayMax += (int)(addOn);
	autocorrelationDisplayMin -= (int)(addOn);
	}else{
		if (autocorrelationDisplayMax < (autocorrelationLength - addOn)){
		autocorrelationDisplayMax += (int)(addOn);
		}
	}
	}
	
	if (key == 'f' || key == 'F'){
	ofToggleFullscreen();
	}
	
	if (key == 'p' || key == 'P'){
		if ((autocorrelationDisplayMax - autocorrelationDisplayMin) > 8){
		autocorrelationDisplayMax -= (int)((autocorrelationDisplayMax - autocorrelationDisplayMin) *0.25);
		autocorrelationDisplayMin += (int)((autocorrelationDisplayMax - autocorrelationDisplayMin) *0.25);
		}
	
	}

	if (key == 'm' || key == 'M'){
//	midiMode = !midiMode;
followTempoIndex = maxTempoIndex;
followPhaseIndex = maxPhaseIndex;
	}
	
	if (key == 'e' || key == 'E'){
	//set follow to tempo with the lowest entropy and highest value for that tempo
	followTempoIndex = peakEntropyTempo;
	/*
	int matrixValue = autoCorrMatrix[peakEntropyTempo][0];
	int phaseVal;
		for (phaseVal = 0;phaseVal < autoCorrTempos[peakEntropyTempo];phaseVal++){
			if (autoCorrMatrix[peakEntropyTempo][phaseVal] > matrixValue){
			followPhaseIndex = phaseVal;
			matrixValue = autoCorrMatrix[peakEntropyTempo][phaseVal];
			}
		}
	*/
	followPhaseIndex = peakEntropyPhase;
	setACMprintString();
	}
				
	if (key == 'x' || key == 'X'){
	amplitudeNumber *= 2;
	}

	if (key == 'z' || key == 'Z'){
	amplitudeNumber /= 2;
	}
	
	if (key == 's' || key == 'S'){
	bSnapshot = true;
	}

if ((key == '=' || key == '+') && amplitudeNumber < 960){
	amplitudeNumber += 8;
	}

if ((key == '-' || key == '_') && amplitudeNumber > 12){
	amplitudeNumber -= 8;
	}		

if (key == 'T' || key == 't'){
	if ((onsetIndex - startFrameIndex) > autoCorrTempoMinimum && (onsetIndex - startFrameIndex) <= ( autoCorrTempoMinimum + tempoIndexMax)){
	//	followTempoIndex = onsetIndex - startFrameIndex ;
		debugInt = followTempoIndex;
	//	followPhaseIndex = acmIndex % autoCorrTempos[followTempoIndex];
		}
		else{
		startFrameIndex = onsetIndex;
		}
}//end T

}//end key pressed



//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y ){
if (x >= 0 && x <= screenWidth && y >= 0 && y <= screenHeight){
	int width = screenWidth / (phaseIndexMax - phaseIndexMin);
	int height = screenHeight / (tempoIndexMax - tempoIndexMin);

	Xcoord = floor(x / width);
	Ycoord = floor(y/height) + 1;
	
	mouseACMvalue = autoCorrMatrix[tempoIndexMax - tempoIndexMin - Ycoord][Xcoord];

	setACMprintString();
}//end if in screen limits

if (autoCorrMatrixMode == true){
	if (x >= 0 && x <= screenWidth && y >= 0 && y <= screenHeight){
		mouseDownX = x;
		mouseDownY = y;

		float width = screenWidth / (phaseIndexMax - phaseIndexMin);
		float height = screenHeight / (tempoIndexMax - tempoIndexMin);

		Xcoord = round(x / width);
		Ycoord = round(y/height);
	
		hoverTempo = (tempoIndexMax - tempoIndexMin - Ycoord);
		hoverPhase = Xcoord;
	
		}
	}	//end if autoCorrMatrix Mode true - i.e. on the matrix map	
	
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
if (autoCorrMatrixMode == true){
	if (x >= 0 && x <= screenWidth && y >= 0 && y <= screenHeight){
		mouseDownX = x;
		mouseDownY = y;

		float width = screenWidth / (phaseIndexMax - phaseIndexMin);
		float height = screenHeight / (tempoIndexMax - tempoIndexMin);

		Xcoord = round(x / width);
		Ycoord = round(y/height);
	
		tempoOutput = (tempoIndexMax - tempoIndexMin - Ycoord);
		phaseOutput = Xcoord;
	
		followTempoIndex = tempoOutput;
		followPhaseIndex = phaseOutput;
	
		}
	}	//end if autoCorrMatrix Mode true - i.e. on the matrix map	
}

//--------------------------------------------------------------
void testApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::windowResized(int w, int h){

	screenWidth = (float) ofGetWidth();
	screenHeight = (float) ofGetHeight();
	
}

void testApp::setTransitionMatrix(){
	int i;
	for (i = 0;i< transitionWidth;i++){
//	transitionProbability[i] = pow(transitionPowerValue, -1 * i/transitionStdDev);//i.e. 1 , 0.5, 0.25, 0.125
	transitionProbability[i] = gaussian(i, 0, transitionStdDev);
	transitionTempoProbability[i] = exponentialDistribution(i, 0, transitionTempoStdDev);
//	1 - (i/transitionWidth);	
	}
	for (i = transitionWidth;i < TRANSITION_SIZE;i++){
	transitionProbability[i] = 0;
	}
}

void testApp::setACMprintString(){
float period = (autoCorrTempoMinimum + (tempoIndexMax - tempoIndexMin - Ycoord)) * 	aubioHopSize * 1000 / (float) 44100;//period in msec

	acmString = "Tempo ";
	acmString += ofToString(autoCorrTempos[tempoOutput]);
	acmString += ";  Phase ";
	acmString += ofToString(phaseOutput);
		acmString += "; [";
		acmString += ofToString(tempoIndexMax - tempoIndexMin - Ycoord);
		acmString += "][";
		acmString += ofToString(Xcoord);
		acmString += "] = ";
//	acmString += ";  current val: ";
	acmString += ofToString(mouseACMvalue, 3);
	acmString += ", ";	
	acmString += ofToString(entropy[tempoIndexMax - tempoIndexMin - Ycoord], 2);
	acmString += ". BPM = ";
	acmString += ofToString(60000/period, 1);
	
//	acmString += ".  Max ";
//	acmString += ofToString(runningOnsetDetMax, 1);
	
	acmString += ".  Width : ";
	acmString += ofToString(transitionWidth);
	acmString += ".  Entropy: ";
	acmString += "[";
		acmString += ofToString(peakEntropyTempo);
		acmString += "][";
		acmString += ofToString(peakEntropyPhase);
		acmString += "]";
		acmString += ".  Follow: ";			
	acmString += "[";
		acmString += ofToString(followTempoIndex);
		acmString += "][";
		acmString += ofToString(followPhaseIndex);
		acmString += "]";		
}

double testApp::gaussian(double x, double m, double s){
return (   exp( (-1 * (x-m) * (x-m) / (2*s*s) )  ) );
}

double testApp::exponentialDistribution(double x, double m, double s){
double tmpVar = sqrt((x-m)*(x-m));
return (   exp (-1 * s * tmpVar) );
}

double testApp::rayleigh(double tau, double beta){
double value;
value = exp(-1 * tau * tau / (2 * beta * beta));
value *= tau / (beta * beta);
value /= maximumRayleigh;
return value;
}

bool testApp::checkEntropyTempos(){
bool checkBoolean = false;
	if (entropyTemposIndex > 6){
double recentEntropySum;
recentEntropySum = abs(entropyTempos[entropyTemposIndex] - entropyTempos[entropyTemposIndex-1])
				 + abs(entropyTempos[entropyTemposIndex - 1] - entropyTempos[entropyTemposIndex - 3])
				 + abs(entropyTempos[entropyTemposIndex-2] - entropyTempos[entropyTemposIndex-4])  ;
	  
if ( recentEntropySum < 6){
	  checkBoolean = true;
	  entropyCheckString = "Entropy check : ";
	  entropyCheckString += ofToString(entropyTempos[entropyTemposIndex], 1 );
	entropyCheckString += ", "; 
	  entropyCheckString += ofToString(entropyTempos[entropyTemposIndex-1], 1 );
	entropyCheckString += ", "; 
	entropyCheckString += ofToString(entropyTempos[entropyTemposIndex-2], 1 );
	entropyCheckString += ", "; 
	entropyCheckString += ofToString(entropyTempos[entropyTemposIndex-3], 1 );
	entropyCheckString += ", "; 
	entropyCheckString += ofToString(entropyTempos[entropyTemposIndex-4], 1 );
	entropyCheckString += ", and sum is : ";		
	entropyCheckString += ofToString(recentEntropySum,1);
		
	  }
	}
return checkBoolean;
}


float testApp::phaseDifferenceFromFollowed(){

int testTempoIndex, testPhaseIndex;
testTempoIndex = tempoOutput;

float currentMax = autoCorrMatrix[followTempoIndex][followPhaseIndex];
float distanceFromCurrentMax, probabilityTransition;

//calculte the probability of transition from current location: followTempo, followPhase to
//the peak entropy value
	testPhaseIndex = (phaseOutput + 
					(acmIndex % autoCorrTempos[testTempoIndex]) + autoCorrTempos[followTempoIndex]
					- (acmIndex % autoCorrTempos[followTempoIndex]) 
					) 
					% autoCorrTempos[followTempoIndex];//crucial change from 8_v1 - relative to the follow index

int minimumTempo = min(testPhaseIndex, followPhaseIndex);
	int maximumTempo = max(testPhaseIndex, followPhaseIndex);
	//either the distance is the easy one [....x....y.........] - here 5
	//or the large on which is from [.........y.............x.............] i.e. 11 here 
	//otherwise you may think further away when wrapped round the end
	distanceFromCurrentMax = min(
	(followPhaseIndex - testPhaseIndex)*(followPhaseIndex - testPhaseIndex), 
	((minimumTempo + autoCorrTempos[testTempoIndex] - maximumTempo) % autoCorrTempos[testTempoIndex]) *
	((minimumTempo + autoCorrTempos[testTempoIndex] - maximumTempo ) % autoCorrTempos[testTempoIndex]) 
	);
	float dist = sqrt(distanceFromCurrentMax);
return dist;

}

void testApp::differenceFrom(int testTempoIndex, int testPhaseIndex){
//


float currentMax = autoCorrMatrix[followTempoIndex][followPhaseIndex];
float distanceFromCurrentMax, probabilityTransition;

//calculte the probability of transition from current location: followTempo, followPhase to
//the peak entropy value
	testPhaseIndex = (testPhaseIndex + 
					(acmIndex % autoCorrTempos[testTempoIndex]) + autoCorrTempos[followTempoIndex]
					- (acmIndex % autoCorrTempos[followTempoIndex]) 
					) 
					% autoCorrTempos[followTempoIndex];//crucial change from 8_v1 - relative to the follow index
	int actualTestPhaseIndex = acmIndex % autoCorrTempos[testTempoIndex];
	//the phase is relative to the follow phase - for current squares at each tempo
//	int tmpFollowPhaseIndex = acmIndex % autoCorrTempos[followTempoIndex];
	int minimumTempo = min(testPhaseIndex, followPhaseIndex);
	int maximumTempo = max(testPhaseIndex, followPhaseIndex);
	//either the distance is the easy one [....x....y.........] - here 5
	//or the large on which is from [.........y.............x.............] i.e. 11 here 
	//otherwise you may think further away when wrapped round the end
	distanceFromCurrentMax = min(
	(followPhaseIndex - testPhaseIndex)*(followPhaseIndex - testPhaseIndex), 
	((minimumTempo + autoCorrTempos[testTempoIndex] - maximumTempo) % autoCorrTempos[testTempoIndex]) *
	((minimumTempo + autoCorrTempos[testTempoIndex] - maximumTempo ) % autoCorrTempos[testTempoIndex]) 
	);
	
	float phaseDistance = gaussian(sqrt(distanceFromCurrentMax), 0, followPhaseStdDev);
	//	followProbNoiseFloor = 0.1
	probabilityTransition = (1-followProbabilityNoiseFloor) * gaussian(sqrt(distanceFromCurrentMax), 0, followPhaseStdDev);
	
	probabilityTransition *= gaussian((followTempoIndex - testTempoIndex), 0, followTempoStdDev);
	float tempoDistance = gaussian((followTempoIndex - testTempoIndex), 0, followTempoStdDev);
//	distanceFromCurrentMax = sqrt(distanceFromCurrentMax);
	
	//probabilityTransition = (1-followProbabilityNoiseFloor) * gaussian(distanceFromCurrentMax, 0, followGaussianStdDev);
	
	probabilityTransition += followProbabilityNoiseFloor ;
	
/*	if (autoCorrMatrix[testTempoIndex][actualTestPhaseIndex] * probabilityTransition > autoCorrMatrix[followTempoIndex][followPhaseIndex]){
	followTempoIndex = testTempoIndex;
	followPhaseIndex =  actualTestPhaseIndex;//another crucial change to work with the above
	followTempo = autoCorrTempos[followTempoIndex];
	}
*/
	if (probabilityTransition < 1){
distanceCheckString = "              H [";
distanceCheckString += ofToString(testTempoIndex );
distanceCheckString += "][";
distanceCheckString += ofToString(testPhaseIndex);
distanceCheckString += "] , f [";
distanceCheckString += ofToString(followTempoIndex);
distanceCheckString += "][";
distanceCheckString += ofToString(followPhaseIndex);
distanceCheckString += "].  P[";
distanceCheckString += ofToString(sqrt(distanceFromCurrentMax), 1);
distanceCheckString += "] = ";
distanceCheckString += ofToString(phaseDistance, 3);
distanceCheckString += ", T[";
distanceCheckString += ofToString(abs(followTempoIndex - testTempoIndex));
distanceCheckString += "] = ";
distanceCheckString += ofToString(tempoDistance, 3);
distanceCheckString += ".  Prob Trans : ";
distanceCheckString += ofToString(probabilityTransition, 3);
distanceCheckString += ", output ph diff : ";
distanceCheckString += ofToString(outputPhaseDifference, 3);
distanceCheckString += ofToString(13);
}//end if less than one so only print interesting info


	}

void testApp::resetMatrix(){
	int x,y;
	for (x=0;x<AUTO_CORR_DIMENSIONS;x++){
		for (y=0;y<AUTO_CORR_DIMENSIONS;y++){
		autoCorrMatrix[x][y] = 0;//ofRandomuf()/10;
		}
		autoCorrTempos[x] = autoCorrTempoMinimum+x;//set tempo in frames for each tempo lag
	}
}

void testApp::testTransitions(){
int testTempoIndex, testPhaseIndex;
float currentMax = autoCorrMatrix[followTempoIndex][followPhaseIndex];
float distanceFromCurrentMax, probabilityTransition, shiftAutoCorrValue;
int phaseShift;

	for (phaseShift = -1*followPhaseWidthToTest;phaseShift <= followPhaseWidthToTest;phaseShift++){

//calculte the probability of transition from current location: followTempo, followPhase to
//the test location
if (phaseShift != 0){
	probabilityTransition = (1-followProbabilityNoiseFloor) * gaussian(phaseShift, 0, followPhaseStdDev);
	
	probabilityTransition += followProbabilityNoiseFloor ;
	
	testTempoIndex = followTempoIndex;
	testPhaseIndex = (followPhaseIndex+phaseShift+autoCorrTempos[followTempoIndex])%autoCorrTempos[followTempoIndex];
	
	if (autoCorrMatrix[followTempoIndex][testPhaseIndex] * probabilityTransition > autoCorrMatrix[followTempoIndex][followPhaseIndex]){

	transitString = "TRANSITION FOLLOW ";
	transitString += "[";
	transitString += ofToString(followTempoIndex);
	transitString += "][";
	transitString += ofToString(followPhaseIndex);
	transitString += "] to [";
	transitString += ofToString(testTempoIndex);
	transitString += "][";
	transitString += ofToString(testPhaseIndex);
	transitString += "]";

	followTempoIndex = testTempoIndex;
	followPhaseIndex =  testPhaseIndex;
	followTempo = autoCorrTempos[followTempoIndex];
	
		if (rawOnsetIndex - beatLastSent > autoCorrTempos[followTempoIndex]/2 && minimumPhaseDifference(acmIndex %autoCorrTempos[followTempoIndex], followPhaseIndex, followTempoIndex) < 3){	
				//send OSC message back to Max							
				ofxOscMessage m;
				m.setAddress( "/acmBeat" );
				m.addIntArg( 1 );
				sender.sendMessage( m );
				beatLastSent = rawOnsetIndex;	
			
						//write new follow onset
						acmFollowOnsetRecorded[onsetIndex] = true;
						onsetDifference = (onsetIndex - lastFollowOnsetIndex);
						lastFollowOnsetIndex = onsetIndex;
		
				}		
	
	}
	
	}//end if not zero
	}//end for phaseShift

}


void testApp::testFullTransitions(){
int testTempoIndex, testPhaseIndex;
float currentMax = autoCorrMatrix[followTempoIndex][followPhaseIndex];
float distanceFromCurrentMax, probabilityTransition, shiftAutoCorrValue;
int phaseShift;
int tempoShift;
int winningPhaseIndex, winningTempoIndex;
float winningAutoCorrValue;
winningAutoCorrValue = autoCorrMatrix[followTempoIndex][followPhaseIndex];

for (tempoShift = -1 * followTempoWidthToTest;tempoShift <= followTempoWidthToTest;tempoShift++){

testTempoIndex = followTempoIndex+tempoShift;
if (testTempoIndex >= tempoIndexMin  && testTempoIndex < tempoIndexMax ){
int tempoOffsetRequired;
tempoOffsetRequired = (acmIndex%autoCorrTempos[testTempoIndex] - acmIndex%autoCorrTempos[followTempoIndex]);

	for (phaseShift = -1*followPhaseWidthToTest;phaseShift <= followPhaseWidthToTest;phaseShift++){

//calculte the probability of transition from current location: followTempo, followPhase to
//the test location
if (phaseShift != 0 || tempoShift != 0){
	probabilityTransition = (1-followProbabilityNoiseFloor) * gaussian(phaseShift, 0, followPhaseStdDev);
	
	probabilityTransition *= gaussian(tempoShift, 0, followTempoStdDev);
	
	probabilityTransition += followProbabilityNoiseFloor ;
	
	
	testPhaseIndex = (tempoOffsetRequired + followPhaseIndex + phaseShift + autoCorrTempos[followTempoIndex]) % autoCorrTempos[followTempoIndex];
	
		if (autoCorrMatrix[testTempoIndex][testPhaseIndex] * probabilityTransition > winningAutoCorrValue){
		winningTempoIndex = testTempoIndex;
		winningPhaseIndex = testPhaseIndex;
		winningAutoCorrValue = autoCorrMatrix[winningTempoIndex][winningPhaseIndex];
		}
	
	}//end if not zero
	}//end for phaseShift
	}//end if within min and max tenpo
	}//end for tempoShift
	
	if (winningAutoCorrValue > autoCorrMatrix[followTempoIndex][followPhaseIndex]){
	//do update
	
	transitString = "TRANSITION FULL FOLLOW ";
	transitString += "[";
	transitString += ofToString(followTempoIndex);
	transitString += "][";
	transitString += ofToString(followPhaseIndex);
	transitString += "] to [";
	transitString += ofToString(winningTempoIndex);
	transitString += "][";
	transitString += ofToString(winningPhaseIndex);
	transitString += "]";

	followTempoIndex = winningTempoIndex ;
	followPhaseIndex =  winningPhaseIndex ;
	followTempo = autoCorrTempos[followTempoIndex];
	
		if (rawOnsetIndex - beatLastSent > autoCorrTempos[followTempoIndex]/2
		 && minimumPhaseDifference(acmIndex %autoCorrTempos[followTempoIndex], followPhaseIndex, followTempoIndex) < 3){	
				//send OSC message back to Max							
				ofxOscMessage m;
				m.setAddress( "/acmBeat" );
				m.addIntArg( 1 );
				sender.sendMessage( m );
				beatLastSent = rawOnsetIndex;	
			
						//write new follow onset
						acmFollowOnsetRecorded[onsetIndex] = true;
						onsetDifference = (onsetIndex - lastFollowOnsetIndex);
						lastFollowOnsetIndex = onsetIndex;
		
				}//end if not beat for a while		
	
	}//end if winning value


}



int testApp::minimumPhaseDifference(int testPhaseIndex, int followPhaseIndex, int testTempoIndex){
float distanceFromEachOther;
int minimumTempo, maximumTempo, returnDistance;
minimumTempo = min(testPhaseIndex, followPhaseIndex);
maximumTempo = max(testPhaseIndex, followPhaseIndex);
distanceFromEachOther = min(
	(followPhaseIndex - testPhaseIndex)*(followPhaseIndex - testPhaseIndex), 
	((minimumTempo + autoCorrTempos[testTempoIndex] - maximumTempo) % autoCorrTempos[testTempoIndex]) *
	((minimumTempo + autoCorrTempos[testTempoIndex] - maximumTempo ) % autoCorrTempos[testTempoIndex]) 
	);
	returnDistance = sqrt(distanceFromEachOther);
	return returnDistance;
}

void testApp::initialiseMatrices(){
int i;
	for (i = 0;i < NUM_DETECTION_SAMPLES;i++){
		onsetRecorded[i] = false;
		acmOnsetRecorded[i] = false;
		maxACMOnsetRecorded[i] = false;
		acmFollowOnsetRecorded[i] = false;
		lastFollowOnsetIndex = 0;
	}
	startFrameIndex = 0;
	beatLastSent = 0;
	entropyBeatLastSent = 0;
		entropyCheckString = " x ";
	entropyTemposIndex = 0;
	autoSetTempo = false;
	followTempoIndex = 9;
	followPhaseIndex = 0;
	}