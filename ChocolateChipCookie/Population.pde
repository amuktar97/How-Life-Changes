void population() {
  float centerX=appWidth*1/2, centerY=appHeight*1/2;
  startWidth = appWidth*1/2;
  startHeight = appHeight*1/10;
  startX = centerX - startWidth*1/2;
  startY = centerY - startHeight*1/2;
  //
  backgroundX = appWidth * 0;
  backgroundY = appHeight * 0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  //
  quitWidth = appWidth * 1/9; //Origonal 1/3, debugging to adjust
  quitHeight = appHeight * 1/10;
  quitX = centerX - quitWidth * 1/2;
  quitY = centerY - 4*quitHeight ;
  //
  quitButtonImageRectX = quitX;
  quitButtonImageRectY = quitY;
  quitButtonImageRectWidth = quitWidth * 5/6; //Origonal needs debugging to adjust
  quitButtonImageRectHeight = quitHeight;
  //
    rect( Rect2Width, Rect2Height, Rect2X, Rect2Y );
  line(LineX1, 0, LineX1, appHeight);
  line(LineX2, 0, LineX2, appHeight);
  line(0, LineY1, appWidth, LineY1);
  line(0, LineY2, appWidth, LineY2); 
  //Rect 1
  Rect1Width = appWidth*1/3;
  Rect1Height = appHeight*1/3;
  Rect1X = appWidth*1/3;
  Rect1Y = appHeight*1/3;
  //rect 2
  Rect2Width=appWidth*2/3 ; 
  Rect2Height=appHeight*1/3 ;
  Rect2X=  appWidth*2/3;
  Rect2Y= appHeight*1/3;
  //lines
  LineX1 = appWidth*1/3;
  LineX2 = appWidth*2/3;
  LineY1 = appHeight*1/3;
  LineY2 = appHeight*2/3;
  //
}//End Population
//
//ENd Population Subprogram
