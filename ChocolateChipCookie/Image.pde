PImage backgroundImage, quitButtonImage, gameboard1,gameboard2, gameboard3, gameboard4, gameboard5, gameboard6, gameboard7, gameboard8, gameboard9;
//
void imageSetup() {//Image Population
  backgroundImage=loadImage("../Image/istockphoto-1089141884-612x612.jpg");
           gameboard1=loadImage("../Image Used/istockphoto-950149718-612x612.jpg");
           gameboard2=loadImage("../Image Used/10-Benefits-Showing-Why-Education-Is-Important-to-Our-Society.jpg");
           gameboard3=loadImage("../Image Used/download.jpg");
           gameboard4=loadImage("../Image Used/91EnAM4fBnS._AC_SY450_.jpg");
           gameboard5=loadImage("../Image Used/Multicultural-character.jpg");
           gameboard6=loadImage("../Image Used/Time-for-a-Change.jpg");
           gameboard7=loadImage("../Image Used/traditional-turkish-breakfast.jpg");
           gameboard8=loadImage("../Image Used/getty_473428732_201326.jpg");
           gameboard9=loadImage("../Image Used/91EnAM4fBnS._AC_SY450_.jpg");
  //quitButtonImage is loaded here if different
}//End imageSetup
//
void quitButtonImage() {
  quitButtonImage = backgroundImage;
  //
//Image Dimensions
  float quitButtonImageWidth=1707, quitButtonImageHeight=2560;
  rect( quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight );
  //Following vars must be populated or debugger error
  float quitButtonImageWidth_Adjusted=0.0, quitButtonImageHeight_Adjusted=0.0;
  float quitButtonImageWidth_Calculated=0.0, quitButtonImageHeight_Calculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0; 
  //
  if ( quitButtonImageWidth >= quitButtonImageHeight ) {//Image's largest dimension, Landscape or Square
    largerDimension = quitButtonImageWidth;
    smallerDimension = quitButtonImageHeight;
    //
    //Image's matching dimension to rectangle's matching dimension
    quitButtonImageWidth_Adjusted = quitButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageHeight_Calculated = imageHeightRatio * quitButtonImageRectWidth;
    //
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Adjusted, quitButtonImageHeight_Calculated );
    //
    //
  } else {//Portrait
    largerDimension = quitButtonImageHeight;
    smallerDimension = quitButtonImageWidth;
    //
    //Image's matching dimension to rectangle's matching dimension
    quitButtonImageHeight_Adjusted = quitButtonImageRectHeight;
    imageWidthRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageWidth_Calculated = imageWidthRatio * quitButtonImageRectHeight;
    //
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Calculated, quitButtonImageHeight_Adjusted );
    //
  }
  image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY);
}//End quitButtonImage
//
//End Image Subprogram
