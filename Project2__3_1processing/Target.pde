class Target extends Ball{
  
  float x2 = 0.0;
  float y2 = 0.0;
  
   Target(float _x, float _y) {
   super(_x, _y);
    
  }
 
 void run() {
   display();
   
 }
  
  void display() {
    fill(0);
    ellipse(x, y, 50, 50);
    noFill();
  }
  
}
