//create global variables for x position, y position, x speed and y speed
float x, xSpeed, y, ySpeed;
color ballColor;

void setup(){
  //set the size of the canvas
  size(500,500);
  //initialize the variables
  //ball starts in the center
  x = width/2;
  y = height/2;
  
  //give the ball and inital random direction
  xSpeed = random(10);
  ySpeed = random(10);
  
  //set the ball color
  ballColor = color(255,0,255, 50);
}

void draw(){
  //set the background pixels to be filled with white before turning the backgorund clearning off
  if(frameCount<2){
    background(255);
  }
  
  //check if the ball has reached the edges of the window, if so, turn around
  if(x < 0 || x>width){
    xSpeed *= -1;
  }
   if(y < 0 || y>height){
    ySpeed *= -1;
  }
  
  //add the speeds to the positions to move the ball
  x+=xSpeed;
  y+=ySpeed;
  
  
  //draw the ball
  noStroke();
  //Use our ball color to set the fill
  fill(ballColor);
  ellipse(x,y,10,10);
  
}

void keyPressed(){
  //if i press spacebar, give me a new speed and direction
 if(key == ' '){
  xSpeed = random(10);
  ySpeed = random(10);
 } 
 //if i press c give me a new color
 if(key == 'c'){
   ballColor = color(random(100,255),random(255),random(100,255),50);
 }
}
