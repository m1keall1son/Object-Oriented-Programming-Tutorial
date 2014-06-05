
color myColor;
float x;
float y;

float ballWidth, ballHeight;

float xSpeed;
float ySpeed;

void setup(){
  size(500,500);
  x = width/2;
  y = height/2;
  myColor = color(127);
  
  xSpeed = random(-10,10);
  ySpeed = random(-10,10);
  
  ballWidth = 50;
  ballHeight = 50;

}

void draw(){
  
  //background(255);
  //update the balls position
  x = x + xSpeed;
  y = y + ySpeed;
  
  //check edges
  if(x > width-ballWidth/2 || x < ballWidth/2 ){
    xSpeed = xSpeed * -1;
    myColor = color(random(255), random(255), random(255), 100);
  }
  if(y > height-ballHeight/2 || y < ballHeight/2 ){
    ySpeed = ySpeed * -1;
    myColor = color(random(255), random(255), random(255), 100);
  }
  
  //draw the ball
  noStroke();
   fill(myColor);
  ellipse(x,y,ballWidth,ballHeight);
  
}

void keyPressed(){
 if(key == ' '){
  xSpeed = random(-20,20);
  ySpeed = random(-20,20);
 } 
}
