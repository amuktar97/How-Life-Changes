//Global Variables
int appWidth, appHeight, largerDimension, smallerDimension;
Boolean OS_On=false;
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
  //
}//End setup
//
void draw() {
  if (OS_On==true) splashScreen(); //OS Level MOUSE Click
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //OS Level MouseClick
  if (OS_On==false) OS_On=true;//End OS Level MouseClick
}//End mousePressed
//
//End MAIN Program
