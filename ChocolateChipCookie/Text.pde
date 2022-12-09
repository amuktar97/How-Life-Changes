String spaceBar = "Press the Space Bar to Continue";
//
void textSetup() {}//End textSetup
//
void spaceBarText() {
  rect(startX, startY, startWidth, startHeight);
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 50; //Change the number until it fits
  textFont(titleFont, 50); 
  text(spaceBar, startX, startY, startWidth, startHeight );
}//End spaceBarText
//
//End Text Subprohram
