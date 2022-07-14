//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace;
//
void setup()
{
  //CANVAS will will be added to later
  size(800, 600); //Landscape
  //
  //Population
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
  //
}//End setup
//
void draw() 
{
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program
