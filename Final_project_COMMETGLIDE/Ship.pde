//float x = 200;
//float y = 680;

//player class
class Ship {
  float x = 200;
  float y = 650;
  PVector velocity;
  PVector location;


  Ship (float x, float y) {
    location = new PVector (x, y);
    velocity = new PVector (0, 0);
  }

  void shipMove() { //move left
    if (keyPressed == true)
    {
      if (key == CODED) {
        if (keyCode == LEFT) {
          //  if (x<0) {
          location.x-=2;
          velocity.x *= -1;
          //} // width
        } //left
        if (keyCode == RIGHT) {
          //if (x<width){
          location.x+=2;
          velocity.x *= -1;
          //}
        }//right
      } // coded
    }
  } //ship


  void display() { //appearance method of ball object
    fill(255);
    ellipse(location.x, location.y, 30, 30);
  }

  void checkEdges() { //this ensures the player do not exit screen
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    }
    if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
  }//checkEdges
}


