//Global Variables
int appWidth, appHeight, largerDimension, smallerDimension;
Boolean OS_On=false, splashScreenStart=false;
//
void setup() {
  size(600, 400);
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //Display Algorithm from Hello World
  display(); 
  //smaller & larger imension from Display Algorithm
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  population(); //Values based on DISPLAY
  textSetup();
  //
}//End setup
//
void draw() {
  //Assignemnt #2: OS Level Mouse CLick and Splash Screen
  if ( OS_On==true ) splashScreen(); //OS Level MOUSE Click
  if ( splashScreenStart==true ) homeScreen();
  //
}//End draw
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if (  OS_On==true && key==' ' ) {
    splashScreenStart = true; 
    backgroundImage();
  }//End Splash Screen SPACE Bar
}//End keyPressed
//
void mousePressed() {
  //OS Level MouseClick
  if ( OS_On==false ) OS_On=true;//End OS Level MouseClick 
}//End mousePressed
//
//End MAIN Program
