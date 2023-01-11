//Global Variables
int appWidth, appHeight, largerDimension, smallerDimension;
Boolean OS_On=false, splashScreenStart=false, homeScreen=false;
Boolean Daymode = false, Nightmode = false;
Boolean nightMode = false; //Bonus #1: populate with system clock
//Ultimate Bonus, Gr 11: use API-sunrise for system clock start 
//Hint: https://processing.org/reference/hour_.html
color resetDefaultInk=#000000, white=#FFFFFF,purple=#FF00FF;
/* Night Mode Comment
 Purple not for Night Mode, full BLUE
 resetDefaultInk is Night Mode friendly
 */
//
void setup() {
  size(600, 400);
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //Display Algorithm from Hello World
  display();  //Purpose: CANVAS fits in monitor & dimension size is known
  //smaller & larger imension from Display Algorithm
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  population(); //Values based on DISPLAY
  textSetup();
  imageSetup();
}//End setup
//
void draw() {
  //Assignemnt #2: OS Level Mouse CLick and Splash Screen
  if ( OS_On==true && splashScreenStart==false) splashScreen(); //OS Level MOUSE Click
  if ( splashScreenStart==true ) homeScreen();
  if ( homeScreen==true) ;
  //
  //Draw the image in 3x3 grid
  image (img1, 0, 0, 200, 200);
  image (img2, 200, 0, 200, 200); 
  image (img3, 400, 0, 200, 200);
  image (img4, 0, 200, 200, 200);
  image (img5, 200, 200, 200, 200);
  image (img6, 400, 200, 200, 200);
  image (img7, 0, 400, 200, 200);
  image (img8, 200, 400, 200, 200);
  image (img9, 400, 400, 200, 209);
  //
}//End draw
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if ( OS_On==true && key==' ' ) {
    splashScreenStart = true;
    backgroundImage();
  }//End Splash Screen SPACE Bar
  //
  //Key Board Short Cuts
  if ( key==CODED || keyCode==ESC) exit();
  if ( key=='Q' || key=='q' ) exit(); //Option ESC with keyCode
  if ( key=='N' || key=='n' ) {
    if ( nightMode==false ) { 
      nightMode = true;
      backgroundImage();
      //Reminder: must redraw all of rectangles too, and Home Screen
    } else { 
      nightMode = false;
      backgroundImage();
      //Reminder: must redraw all of rectangles too, and Home Screen
    }
  }
  //
}//End keyPressed
//
void mousePressed() {
  //OS Level MouseClick
  if ( OS_On==false ) OS_On=true;//End OS Level MouseClick
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) exit();
  //
}//End mousePressed
//
//End MAIN Program
