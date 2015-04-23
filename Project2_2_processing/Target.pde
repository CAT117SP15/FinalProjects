class Target {
  
  float x2 = 0.0;
  float y2 = 0.0;
  
   Target(float _x2, float _y2) {
   x2 = _x2;
   y2 = _y2;
    
  }
 
 void runt() {
   displayt();
   
 }
  
  void displayt() {
    fill(0);
    ellipse(x2, y2, 50, 50);
    noFill();
  }
  
}
