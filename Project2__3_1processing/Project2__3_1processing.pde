PImage bg;
PImage explo;
Ball test;
Target test2;

int num = 50; //trying to draw something to come behind 'test'
float [] x = new float[num];
float [] y = new float[num];

boolean collision = false;


void setup() {
  size(800, 600);
  
  bg = loadImage("paint_canvas.jpg");
  explo = loadImage("explosion1_0022.png");

  test = new Ball(400, 500);
  test2 = new Target(400, 200);
  
  
}


void draw() {
  
  background(bg);
  
  fill(200, 50, 60);
  ellipse(400, 500, 60, 60);
  noFill();
  


 
  check();
   
if (keyPressed){
  if (key == 's') { 
   (keyPressed) = true; // want to keep the key press to holdtrue
    
  test.run();
  }
}
  


 if (collision == true) {
      image(explo, 350, 150); 
      test2 = new Target(400, 300); // trying to give it a random position but to happen once every collision
      //return false; //trying to use return
      
} 
if (collision == false){
  image(explo, 500, -200);
}
 
  
 test2.run();
 
 
}

 
  void check(){
    if(dist(test2.x, test2.y, test.x, test.y) <= 50){
    collision = true;
    if(dist(test2.x, test2.y, test.x, test.y) >= 50){
    collision = false;
  
    }
  }
  }
