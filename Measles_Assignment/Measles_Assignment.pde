//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace;
float xLeftEye, yLeftEye, eyeDiameter;
float xRightEye, yRightEye,  eyeDiamter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xMeasle, yMeasle, measleDiamter;
//
void setup()
{
  //CANVAS will will be added to later
  size(800, 600); //Landscape
  //
  //Population
  float xCenter= width/2;
  float yCenter= height/2;
  xFace = width/2;
  yFace = height/2;
  float smallerDimension;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  
  xLeftEye = xCenter - width*1/4;
  yLeftEye=  yCenter - width*1/4;
  eyeDiameter= xCenter;
  xRightEye=  xCenter + width*1/4;
  yRightEye=  yCenter + width*1/4;
  eyeDiameter= xCenter;
  xNoseBridge= ;
  yNoseBridge= ;
  xLeftNostril= ;
  xRightNostril= ;
  yRightNostril= ;
  xLeftMouth= ;
  yLeftMouth= ;
  xRightMouth= ;
  yRightMouth= ;
  //
}//End setup
//
void draw() 
{
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiamter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiamter);
  triangle( xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);//Nose
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  //
  ellipse(xMeasle, yMeasle, measleDiamter, measleDiamter);
  //
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program
