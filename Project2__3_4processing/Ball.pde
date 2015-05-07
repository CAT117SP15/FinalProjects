class Ball {
  
  float x = 0.0;
  float y = 0.0;
  
  float speedy = 1.0;
  
  Ball(float _x, float _y) {
   x = _x;
   y = _y;
    
  }
 
 void run() {
   display();
   move();
   accel();
   check();
   
 }
  
  void display() {
    fill(255);
    println(x, y);
    ellipse(x, y, 40, 40);
    //if (y > height){      tryin to reset position
    // y = 500;
    //}
  }
  
  void move() {
    y -= speedy;
  }
  
  void accel() {
    speedy += 0.01;
  }
  
 
  
}
