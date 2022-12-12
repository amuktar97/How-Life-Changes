float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
int tintDayMode=255, tintDayModeOpacity=50;
//Blue might change, starts at zero
int tintRed=64, tintGreen=64, tintBlue=0, tintNightModeOpacity=80;
//
void homeScreen() { //Exists in VIOD DRAW
  println("Arrived at Home Screen"); //Testing for Splash Screen Start Button working
  /* Home Screen Expectations
  -Background image using tint()
  -9 evenly spaced rectangles
  -Quit Button and Reset Button (Splash Screen Start Button)
  -In each: image, text, 2D Shape, Button
  -Narartive through the 9 rectangles
  -see Case Study
  -Note: must have one image with aspect ratio
  */
  //
}//End homeScreen
//
void backgroundWhiteScreen() {
  fill(white);
  noStroke();
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight); //White colour
  stroke(1); //Reset: 1 pixel
  fill(white); //Reset: white
}//End backgroundWhiteScreen 
//
void backgroundImage() {
  backgroundWhiteScreen();
  tint(tintDayMode, tintDayModeOpacity); 
  //tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  image(backgroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //image with tint() 
}//End backgroungImage
//
//End Home Screen Subprogram
