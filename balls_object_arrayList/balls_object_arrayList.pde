//declare an ArrayList of type Ball
//ArrayList is a template, so you pass the datatype, in this case 'Ball',into the <> carats, now the ArrayList knows it will be holding Balls
ArrayList<Ball> balls;

void setup() {
  
  size(500, 500);
  //instatiate the ArrayList object with its constructor, telling it again to be of type 'Ball'
  balls = new ArrayList<Ball>();
  
}

void draw() {

  background(255);

  //since the array is of dynamic size, we might not have any and if we try to access one of them we will get an error, so check to be sure we have at least one
  if (balls.size() > 0) {
    //for each Ball, which we will call 'b' for the loop, in balls update and display it
    for (Ball b : balls) {
      b.update();
      b.display();
    }
    
  }
  
}


void mousePressed(){
  //when we click, make a random color
   color rand = color(random(127,255));
   //add a new Ball to the back of the ArrayList by calling the Ball() constructor
   balls.add(new Ball(mouseX, mouseY,rand) ); 
}

