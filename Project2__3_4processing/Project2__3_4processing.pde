PImage bg;
PImage explo;
PImage tail;
Ball test;
Target test2;
Ball2 horiball;

int num = 20;                           //use the array reference from Processing website
float tailx[] = new float[num];
float taily[] = new float[num];

boolean collision = false;


void setup() {
  size(800, 600);
  frameRate(30);
  
  bg = loadImage("paint_canvas.jpg");
  explo = loadImage("explosion1_0022.png");
  tail = loadImage("Fade_ball.png");

  test = new Ball(400, 500);
  test2 = new Target(400, 200);
  horiball = new Ball2(400, 300);
  
  
  
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
    
   
   int amount = frameCount % num;
    tailx[amount] = test.x;
    taily[amount] = test.y;
  
    for (int i = 0; i < num; i++) {
 
    int index = (1 + i) % num;
    image(tail, tailx[index]-20, taily[index]-20);
  }
  }
  
    test.run();
}

//if (keyPressed){
  //if (key == 'l') { 
   //(keyPressed) = true; // Trying to work with other keys
  // horiball.run2();
 // }
//}                


  
  if (test.y < test2.y) {
  test.y = 500;
  }
  if (test.y < 0) {
  test.y = 500;
}


 if (collision == true) {
      image(explo, 350, 150); 
 } 
     else 
   {
    collision = false;
 }
      //return false; //trying to use return
      
 
if (collision == false){
  image(explo, 500, -200);
}
 
  
 test2.run();
   


 
 
}

 
  void check(){                                            //Void check function was an idea from Nyoka Shortt, she helped me.
    if(dist(test2.x, test2.y, test.x, test.y) <= 50){
    collision = true;
    if(dist(test2.x, test2.y, test.x, test.y) >= 50){
    collision = false;
    }
  }
  }
