//set up array objects for your variables
float[] xPositions;
float[] yPositions;
float[] xSpeeds;
float[] ySpeeds;
color[] ballColors;

//max balls is now just one number!
int maxBalls;

void setup(){
  
  size(500,500);
  //initialize variables
  //set max balls
  maxBalls = 10;
  
  
  //because arrays are objects, you must instantiate them with 'new' and a maximum size
  xPositions = new float[maxBalls];
  yPositions = new float[maxBalls];
  xSpeeds = new float[maxBalls];
  ySpeeds = new float[maxBalls];
  ballColors = new color[maxBalls];
  
  //use a for loop to loop over every array index and place a value inside, the data for each ball lives at each index of 'i'  
  for(int i=0;i<maxBalls;i++){
    xPositions[i] = width/2;
    yPositions[i] = height/2;
    xSpeeds[i] = random(-10,10);
    ySpeeds[i] = random(-10,10);
    ballColors[i] = color(random(100,255));
  }

}

void draw(){
    //clear background
    background(255);
  
  //for loop over each array to update and draw the balls
    for(int i=0;i<maxBalls;i++){
      
      //update positions
      xPositions[i] += xSpeeds[i];
      yPositions[i] += ySpeeds[i];
      
      //check edges
      if(xPositions[i] < 0 || xPositions[i] > width){
        xSpeeds[i] *= -1;
      }
      if(yPositions[i] < 0 || yPositions[i] > height){
        ySpeeds[i] *= -1;
      }
      
      //draw balls
      stroke(0);
      fill(ballColors[i]);
      ellipse(xPositions[i],yPositions[i],10,10);
    }

}
