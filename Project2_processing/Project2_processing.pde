PImage bg;
Ball test;
Target test2;


void setup() {
  size(800, 600);
  
  bg = loadImage("paint_canvas.jpg");
  
  test = new Ball(400, 500);
  test2 = new Target(400, 200);
  
  
  
}


void draw() {
  
  background(bg);
 
  test.run();
  test2.runt();
  
}
