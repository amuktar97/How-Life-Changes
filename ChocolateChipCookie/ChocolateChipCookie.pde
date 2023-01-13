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
  size(700, 700);
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
    rect(width*1.25/4, height*1.6/5, width*1/4, height*2.5/10);//game board 1
    rect(width*2.45/5, height*1.6/5, width*1/4, height*2.5/10);//game board 2
    rect(width*3.7/5, height*1.6/5, width*1/4, height*2.5/10);//game board 3

    //column 2
    rect(width*1.25/5, height*2.87/5, width*1/4, height*2.5/10);//game board 4
    rect(width*2.45/5, height*2.87/5, width*1/4, height*2.5/10);//game board 5
    rect(width*3.7/5, height*2.87/5, width*1/4, height*2.5/10);//game board 6

    //column 3
    rect(width*1.25/5, height*4.1/5, width*1/4, height*2.5/10);//game board 7
    rect(width*2.45/5, height*4.1/5, width*1/4, height*2.5/10);//game board 8
    rect(width*3.7/5, height*4.1/5, width*1/4, height*2.5/10);//game board 9
  
}
  //

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
