//set max balls
int maxBalls;

//declare an array of ball objects
Ball[] balls;

void setup() {
  size(500, 500);
  
  //initialize variables
  maxBalls = 100;

  //instantiate an array of balls with maxballs size
  balls = new Ball[maxBalls];

  //loop over each array item and instantiate a new ball object for that spot
  for (int i=0; i<maxBalls; i++) {
    color randColor = color(random(255));
    balls[i] = new Ball(width/2, height/2, randColor);
  }
}

void draw() {

  background(255);
  
  //loop over each ball in the array and call its update and display methods!
  for (int i=0; i<balls.length; i++) {
    balls[i].update();
    balls[i].display();
  }
}

