//Declare
Ball [] ballClutter = new Ball[40]; 




void setup() {
  size(600, 600);
  smooth();
  
  for( int i = 0; i < ballClutter.length; i++){
  ballClutter[i] = new Ball (random(0,width),random(0,200));
  }
}

void draw() {
  background(0);
  
  //CAll
  for (int i  = 0; i < ballClutter.length; i ++) { 
  ballClutter[i].run();
  }
  
}
