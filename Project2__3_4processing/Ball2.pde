class Ball2 {
  
  float x2 = 0.0;
  float y2 = 0.0;
  float speedx = 1.0;
  
   Ball2(float _x2, float _y2) {
   x2 = _x2;
   y2 = _y2;
    
  }
 
 
 void run2() {
   display();
   move();
   accel();
   check();
   
 }
  
  void display() {
    fill(255);
  
    ellipse(x2, y2, 40, 40);
    //if (y > height){      tryin to reset position
    // y = 500;
    //}
  }
  
  void move() {
    x2 -= speedx;
  }
  
  void accel() {
    speedx += 0.01;
  }
  
 
  
}
