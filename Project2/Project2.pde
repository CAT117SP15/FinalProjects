Ball myBall;
Ball myBall2;
Ball myBall3;



void setup() {
  size(600, 600);
  smooth();
  
  
  myBall = new Ball(400,400);
  myBall2 = new Ball(100,400);
  myBall3 = new Ball(400,200);
}

void draw() {
  background(0);
  
  myBall.run();
  myBall2.run();
  myBall3.run();
  
}
