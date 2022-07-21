//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, yCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
int thack=50;
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, red=#FF0000; //similar to int declaration
color backgroundColour;
Boolean nightMode=false;
float quitButtonX1, quitButtonY1, quitButtonWidth1, quitButtonHeight1;
color white1=#FAF2F2, purple1=#FF00FF, resetButtonColour1=#FFFFFF, buttonFill1; //Not Night Mode Friendly Colours
String title1 = "Quit";
float titleX1, titleY1, titleWidth1, titleHeight1;
PFont titleFont1;
color blue=#0017FF, resetDefaultInk=#FFFFFF; //not nightMode friendly
int titleSize1;
float  stopButtonX1, stopButtonY1, stopButtonWidth1, stopButtonHeight1 ;
String title2 = "Stop";
float titleX2, titleY2, titleWidth2, titleHeight2;
int titleSize2;
PFont titleFont2;
Boolean measlesOn=false;
PImage pic1, pic2, pic3;
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float picWidthAdjusted1, picHeightAdjusted1;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float picWidthAdjusted2, picHeightAdjusted2;
float imageX3, imageY3, imageWidth3, imageHeight3, imageLargerDimension3, imageSmallerDimension3, imageWidthRatio3=0.0, imageHeightRatio3=0.0;
float picWidthAdjusted3, picHeightAdjusted3;
Boolean widthLarger1=false, heightLarger1=false;
Boolean widthLarger2=false, heightLarger2=false;
Boolean widthLarger3=false, heightLarger3=false;
//

void setup()
{
  //CANVAS will will be added to later
  size(800, 600); //Landscape
  //
  //Population
  xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = xCenter-smallerDimension*1/4;
  yLeftEye = yCenter-smallerDimension*1/4;
  xRightEye = xCenter+smallerDimension*1/4;
  yRightEye = yCenter-smallerDimension*1/4;
  eyeDiameter = smallerDimension*1/8;
  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/8;
  xLeftNostril = xCenter-smallerDimension*1/8; 
  yLeftNostril = yCenter+smallerDimension*1/8;
  xRightNostril = xCenter+smallerDimension*1/8;
  yRightNostril = yLeftNostril;
  faceRadius = smallerDimension/2;
  //
  backgroundColour = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
  background( backgroundColour );
  rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension); //See X&Y Measles Random Postioning
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  strokeWeight(1); //resets default
  //
  quitButtonX1 = width*0;
  quitButtonY1 = height*0;
  quitButtonWidth1 = height/10;
  quitButtonHeight1 = width/20;
  //
  titleX1 = width*0;
  titleY1 = height*0;
  titleWidth1 = height/10;
  titleHeight1 = width/20;
  //
  //Single Executed Code
  //Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //To list all fonts available on OS
  printArray(fontList); //For Listing all possible fonts to choose from, then createFont
  titleFont1 = createFont("Arial", 20); //Verify the font exists in Processing.JAVA
  // Tools / Create Font / Find Font in list to verify / Do not press "OK", known bug
  //
  //Layout our text space and typographical features
  rect(titleX1, titleY1, titleWidth1, titleHeight1);
  //
  stopButtonX1=width*0;
  stopButtonY1=height/2;
  stopButtonWidth1=height/10;
  stopButtonHeight1=width/6;
   //
  titleX2 = width*0;
  titleY2 = height/2;
  titleWidth2 = height/10;
  titleHeight2 = width/6;
  //
  //Single Executed Code
  //Fonts from OS (Operating System)
  printArray(fontList); //For Listing all possible fonts to choose from, then createFont
  titleFont2 = createFont("Arial", 20); //Verify the font exists in Processing.JAVA
  // Tools / Create Font / Find Font in list to verify / Do not press "OK", known bug
  //
  //Layout our text space and typographical features
  rect(titleX2, titleY2, titleWidth2, titleHeight2);
  //
  pic1 = loadImage("566-5664547_scarf-clip-art.png"); //Dimensions: width 452, height 536
  pic2 = loadImage("R.png"); //Dimensions: width 1285, height 988
  pic3= loadImage("clipart-clothes-icon-9.png"); //Dimensions: width 1235, height 988
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  //Alogrithm: Find the larger dimension for aspect ration (comparison of two numbers)
  int picWidth1 = 452; 
  int picHeight1 = 536; 
  int picWidth2 = 1285; 
  int picHeight2 = 988; 
  int picWidth3 = 1235; 
  int picHeight3 = 988; 
  //
  if ( picWidth1 >= picHeight1 ) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension1 = picWidth1;
    imageSmallerDimension1 = picHeight1;
    widthLarger1 = true;
  } else {
    //False if Portrait
    imageLargerDimension1 = picHeight1;
    imageSmallerDimension1 = picWidth1;
    heightLarger1 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1); //Verify variables details
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger1 == true ) imageWidthRatio1 = imageLargerDimension1 / imageLargerDimension1;
  if ( widthLarger1 == true ) imageHeightRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if ( heightLarger1 == true ) imageWidthRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if ( heightLarger1 == true ) imageHeightRatio1 = imageLargerDimension1 / imageLargerDimension1;
  //Note:
  //Answers must be 1.0 and between 0 & 1 (decimal)
  //Ratio 1.0 similar to style="width:100%" (websites)
  //Ratio of 0-1 similar to style="height:auto" (websites)
  if ( picWidth2 >= picHeight2 ) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension2 = picWidth2;
    imageSmallerDimension2 = picHeight2;
    widthLarger2 = true;
  } else {
    //False if Portrait
    imageLargerDimension2 = picHeight2;
    imageSmallerDimension2 = picWidth2;
    heightLarger2 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension2, imageLargerDimension2, widthLarger2, heightLarger2); //Verify variables details
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger2 == true ) imageWidthRatio2 = imageLargerDimension2 / imageLargerDimension2;
  if ( widthLarger2 == true ) imageHeightRatio2 = imageSmallerDimension2 / imageLargerDimension2;
  if ( heightLarger2 == true ) imageWidthRatio2 = imageSmallerDimension2 / imageLargerDimension2;
  if ( heightLarger2 == true ) imageHeightRatio2 = imageLargerDimension2 / imageLargerDimension2;
  //
   if ( picWidth3 >= picHeight3 ) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension3 = picWidth3;
    imageSmallerDimension3 = picHeight3;
    widthLarger3 = true;
  } else {
    //False if Portrait
    imageLargerDimension3 = picHeight3;
    imageSmallerDimension3 = picWidth3;
    heightLarger1 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension3, imageLargerDimension3, widthLarger3, heightLarger3); //Verify variables details
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger3== true ) imageWidthRatio3 = imageLargerDimension3 / imageLargerDimension3;
  if ( widthLarger3== true ) imageHeightRatio3 = imageSmallerDimension3 / imageLargerDimension3;
  if ( heightLarger3== true ) imageWidthRatio3 = imageSmallerDimension3 / imageLargerDimension3;
  if ( heightLarger3 == true ) imageHeightRatio3 = imageLargerDimension3 / imageLargerDimension3;
  //Note:
  //Answers must be 1.0 and between 0 & 1 (decimal)
  //Ratio 1.0 similar to style="width:100%" (websites)
  //Ratio of 0-1 similar to style="height:auto" (websites)
  //Population of Rect()
  imageX1 = width*1/25;
  imageY1 = height*1/1.8;
  imageWidth1= width*1.2;
  imageHeight1=height*1.8;
  imageX2=width/3;
  imageY2 = height/1.5;
  imageWidth2 = width/3; 
  imageHeight2 = height/5;
  imageX3=width/15;
  imageY3 = height/450;
  imageWidth3 = width/1.09; 
  imageHeight3 = height/3;
  //
  //Combination of Population of Image with Population of Rect()
  //Ajusted Image Variables for Apect Ratio: entire image will be smaller due to aspect ratio
  picWidthAdjusted1 = imageWidth1 * imageWidthRatio1;
  picHeightAdjusted1 = imageHeight1 * imageHeightRatio1;
  println(imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1); //Note: println() also verifies decimal places, complier will truncate
  picWidthAdjusted2 = imageWidth2 * imageWidthRatio2;
  picHeightAdjusted2 = imageHeight2 ; //* imageHeightRatio2
  println(imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2); //Note: println() also verifies decimal places, complier will truncate
  picWidthAdjusted3 = imageWidth3 * imageWidthRatio3;
  picHeightAdjusted3 = imageHeight3 ; //* imageHeightRatio2
  println(imageX3, imageY3, picWidthAdjusted3, picHeightAdjusted3); //Note: println() also verifies decimal places, complier will truncate
  //
  //
}//End setup
//
void draw()
{ 
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  strokeWeight(1); //resets default
  //
  if ( measlesOn=true )xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  if ( measlesOn=true )yMeasle = random(smallerDimension); //if zero is first, then default
  if (dist(xCenter,yCenter, xMeasle,  yMeasle)>faceRadius){fill(backgroundColour);}
  else{
    fill(red);
  }
  //rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension); //working rect() is before FACE in setup()
  fill(red);
  noStroke();
  measleDiameter = random(smallerDimension*1/75, smallerDimension*1/25); //smallerDimension*1/50;
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset default
  fill(resetWhite);
  //
  //Hover-over
  if ( mouseX>quitButtonX1 && mouseX<quitButtonX1+quitButtonWidth1 && mouseY>quitButtonY1 && mouseY<quitButtonY1+quitButtonHeight1 ) {
    buttonFill1 = red;
  } else {
    buttonFill1 = white1;
  }//End Hover-Over
  fill(buttonFill1); //2-colours to start, remember that nightMode adds choice
  rect(quitButtonX1, quitButtonY1, quitButtonWidth1, quitButtonHeight1);
  fill(resetButtonColour1);
  //
  //Repeating CONSOLE values illustrating mouseX and mouseY related to a formula, mouse buttons
  //println("X-Value", quitButtonX, "\t", mouseX, "\t", quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-Value", quitButtonY, "\t", mouseY, "\t", quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
  fill(blue); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize1 = 20; //Change this number until it fits
  textFont(titleFont1, titleSize1);
  text(title1, titleX1, titleY1, titleWidth1, titleHeight1);
  fill(resetDefaultInk);
  //
  //Hover-over
  if ( mouseX>stopButtonX1 && mouseX<stopButtonX1+stopButtonWidth1 && mouseY>stopButtonY1 && mouseY<stopButtonY1+stopButtonHeight1 ) {
    buttonFill1 = red;
  } else {
    buttonFill1 = white1;
  }//End Hover-Over
  fill(buttonFill1); //2-colours to start, remember that nightMode adds choice
  rect(stopButtonX1, stopButtonY1, stopButtonWidth1, stopButtonHeight1);
  fill(resetButtonColour1);
  //
  //Repeating CONSOLE values illustrating mouseX and mouseY related to a formula, mouse buttons
  //println("X-Value", quitButtonX, "\t", mouseX, "\t", quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-Value", quitButtonY, "\t", mouseY, "\t", quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
  fill(blue); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize2 = 20; //Change this number until it fits
  textFont(titleFont2, titleSize2);
  text(title2, titleX2, titleY2, titleWidth2, titleHeight2);
  fill(resetDefaultInk);
  //
  image(pic1, imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1);
  image(pic2, imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2);
  image(pic3, imageX3, imageY3, picWidthAdjusted3, picHeightAdjusted3);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Technically, there are 4 ways to code a mouse button press
  //
  if ( mouseButton == LEFT ) { //Night Mode FALSE
    backgroundColour = color( random(255), random(255), random(255) ) ; 
    background( backgroundColour );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Left Mouse Button
  //
  if ( mouseButton == RIGHT ) { //Night Mode TRUE
    backgroundColour = color( random(255), random(255), 0 );
    background( backgroundColour );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Right Mouse Button
  //
  //Note: Mouse WHEEL is also available
  //if ( mouseButton == WHEEL ) {}//End Mouse WHEEL
  //
  /* For any button
   if ( nightMode == false ) { //NightMode Switch
   nightMode = true;
   } else {
   nightMode = false;
   } //End nightMode switch
   //
   backgroundColour = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
   background( backgroundColour );
   ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
   */
    if ( mouseX>quitButtonX1 && mouseX<quitButtonX1+quitButtonWidth1 && mouseY>quitButtonY1 && mouseY<quitButtonY1+quitButtonHeight1 ) exit();
    if ( mouseX>stopButtonX1 && mouseX<stopButtonX1+stopButtonWidth1 && mouseY>stopButtonY1 && mouseY<stopButtonY1+stopButtonHeight1 ) 
    if ( measlesOn==false ) {
     measlesOn =true;
    } else {
      measlesOn=false;
    }
}//End mousePressed
//
//End MAIN Program
