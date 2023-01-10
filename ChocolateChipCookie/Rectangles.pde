  //Rectangles
  int Riech1Width, Riech1Height, Riech1X, Riech1Y;
  int Riech2Width, Riech2Height, Riech2X, Riech2Y;
  int Riech3Width, Riech3Height, Riech3X, Riech3Y;
  //Population
  float LineX1, LineX2, LineY1, LineY2;
  float Line2X1, Line2X2, Line2Y1, Line2Y2;
  //Rects
  void Rectangles(){
   if(Nightmode==true){
  fill(#837777);}
  rect( Riech1X, Riech1Y, Riech1Width, Riech1Height);
  if(Nightmode==true){
  fill(#837777);
  }
  rect( Riech2Width, Riech2Height, Riech2X, Riech2Y );
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
}//End Rectangles
//
//ENd Rectangles Subprogram
