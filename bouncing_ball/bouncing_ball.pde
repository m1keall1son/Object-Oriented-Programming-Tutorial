//create global variables for x position, y position, x speed and y speed
float x, xSpeed, y, ySpeed;
color ballColor;

void setup() {
  //set the size of the canvas
  size(500, 500);
  //initialize the variables
  //ball starts in the center
  x = width/2;
  y = height/2;

  //give the ball and inital random direction
  xSpeed = random(-20,20);
  ySpeed = random(-20,20);

  //set the ball color
  ballColor = color(255, 0, 255);
}

void draw() {
  //clear the background
  background(255);

  //add the speeds to the positions to move the ball
  x+=xSpeed;
  y+=ySpeed;

  //check if the ball has reached the edges of the window, if so, turn around
  if (x < 0 || x>width) {
    xSpeed *= -1;
  }
  if (y < 0 || y>height) {
    ySpeed *= -1;
  }

  //draw the ball
  noStroke();
  //Use our ball color to set the fill
  fill(ballColor);
  ellipse(x, y, 10, 10);
}



