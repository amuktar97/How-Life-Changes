//Global Variables
int appWidth, appHeight, largerDimension, smallerDimension;
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
  //
}//End setup
//
void draw() {
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
