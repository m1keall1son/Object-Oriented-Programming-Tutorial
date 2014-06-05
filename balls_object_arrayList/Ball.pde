//define a new object called ball by making a class
//ALWAYS capitalize class names, so you don't get confused
class Ball {
 
  //member variables, making them start with 'm' helps you remeber they are member variables
  //PVector is an object that holds x,y values and gives you convenient methods for manipulating vectors
  PVector mPosition;
  PVector mSpeed;
  color mColor;
  
  //the ball constructor gets called everytime you say 'new Ball()'
  Ball( float x, float y, color col){
    //initialize all variables and use the constructors arguments to fill up the balls' data
    mPosition = new PVector(x,y);
    mSpeed = new PVector(random(-10,10),random(-10,10));
    mColor = col;
  }
 
 //method for updating the balls position
  void update(){
    //we can call methods from inside other methods if we want for convenience, this is known as a private method
    checkEdges();
    mPosition.add(mSpeed);
  }
 
 //method for drawing the ball on the screen
  void display(){
    stroke(0);
    fill(mColor);
    ellipse(mPosition.x, mPosition.y, 10, 10);
  }
 
 //'private' means that only this instance of the ball is allowed to call this method internally, it can't be accessed from the main program
  private void checkEdges(){
    if(mPosition.x < 0 || mPosition.x > width){
      mSpeed.x *= -1;
    }
    if(mPosition.y < 0 || mPosition.y > height){
      mSpeed.y *= -1;
    }
  }
  
  
}
