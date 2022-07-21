//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, yCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
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
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter+smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
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
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
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
  stopButtonY1=height/6;
  stopButtonWidth1=height/10;
  stopButtonHeight1=width/6;
   //
  titleX2 = width*0;
  titleY2 = height/6;
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
  
}//End setup
//
void draw()
{ 
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
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
