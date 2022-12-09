String spaceBar = "Press the Space Bar to Continue";
PFont font;
color resetBefaultInk=#000000, purple=#FF00FF; //Not for Night Mode, full BLUR
/* Night Mode Comment 
 Purple not for Night Mode, full BLUE
 resetDefaultInk is Night Mode friendly
*/
//
void textSetup() {
  //One FONT only here
  //Fonts from OS (Operating System)
  // String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  font = createFont("Harrington", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
}//End textSetup
//
void spaceBarText() {
  rect(startX, startY, startWidth, startHeight);
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 15; //Change the number until it fits
  textFont(font, size); 
  text(spaceBar, startX, startY, startWidth, startHeight );
}//End spaceBarText
//
//End Text Subprohram
