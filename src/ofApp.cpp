#include "ofApp.h"


ofSerial serial;

int h;
int w;
float alphaVar = 0;
float sunMoveX;
float sunMoveY;
int r;
int yes;

ofSoundPlayer backgroundMusic;
ofVideoPlayer movie;

//--------------------------------------------------------------
void ofApp::setup(){
    h = ofGetHeight();
    w = ofGetWidth();
    serial.setup(0, 9600);

    backgroundMusic.loadSound("13 iron.wav");
    backgroundMusic.setVolume(.2);
    
    while (!backgroundMusic.isLoaded());
    backgroundMusic.setLoop(true);
    backgroundMusic.play();
    
    
    movie.load("fingers1.mov");
    movie.play();
    
    


}

//--------------------------------------------------------------
void ofApp::update(){
    movie.update();
}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetBackgroundColor(0, 25, 51);
    
    ofSetColor(255, 255, 255, 50);
    movie.draw(0, 0, w, h);
    
    ofSetColor(255, 255, 255);
    ofDrawBitmapStringHighlight("PRESS 'S' TO MAKE THE SUN RISE AND RISE AND RISE", w/2 - 200, 50);

    
    if (yes == true) {
        alphaVar += 0.18;
        sunMoveX += 1;
        sunMoveY += .7;
    }
    
    if (alphaVar >= 200) {
        alphaVar = 0;
    }
    
    if (sunMoveX > w || sunMoveY < 0) {
        sunMoveX = 0;
        sunMoveY = 0;
    }
    
    
    
    ofColor colorOne(102, 178, 255, 20 + alphaVar);
    ofColor colorTwo(255, 178, 102, 30 + alphaVar);
    ofBackgroundGradient(colorOne, colorTwo, OF_GRADIENT_LINEAR);
    
    r = mouseX/5;
    ofSetColor(255, 255, 51);
    ofDrawCircle(0 + sunMoveX, h - sunMoveY, 50 + r);
    

    
    ofDrawBitmapString(mouseX, 10, 10);
    ofDrawBitmapString(mouseY, 10, 30);
    ofDrawBitmapString(alphaVar, 10, 40);
    ofDrawBitmapString(sunMoveY, 10, 50);
    ofDrawBitmapString(sunMoveX, 10, 60);

    
    ofSetColor(102, 0, 0); //dark red
    ofDrawRectangle(500, 500, 250, 300);
    ofDrawRectangle(0, 400, 150, 500);

    ofSetColor(0, 76, 153); //blue1
    ofDrawRectangle(100, 300, 200, 600);
    ofSetColor(0, 51, 102); //shadow for blue 1
    ofDrawRectangle(300, 320, 30, 600);
    ofDrawTriangle(300, 300, 300, 320, 330, 320);

    
    ofSetColor(0, 76, 153); //blue2
    ofDrawRectangle(700, 250, 200, 600);
    ofSetColor(0, 51, 102); //shadow for blue 2
    ofDrawRectangle(900, 270, 30, 600);
    ofDrawTriangle(900, 250, 900, 270, 930, 270);


    
    //dark purple 1
    ofSetColor(51, 0, 25); //dark purple
    ofDrawRectangle(250, 600, 170, 290);
    ofSetColor(31, 1, 15); //showdow for purple 1
    ofDrawRectangle(420, 610, 25, 300);
    ofDrawTriangle(420, 600, 420, 615, 445, 610);

    
    //dark purple 2
    ofSetColor(51, 0, 25); //dark purple
    ofDrawRectangle(600, 200, 200, 600);
    ofSetColor(31, 1, 15); //showdow for purple 2
    ofDrawRectangle(800, 230, 30, 600);
    ofDrawTriangle(800, 200, 800, 250, 830, 230);
    
    ofSetColor(51, 0, 25); //dark purple
    ofDrawRectangle(950, 400, 100, 600);
    


}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){

}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){
    if (key == 's') {
        yes = true;
    }

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
