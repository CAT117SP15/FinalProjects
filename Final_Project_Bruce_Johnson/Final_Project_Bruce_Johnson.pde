//Resourses 
//The code used in 
int numDrops = 15; // This tells it how many to drop at one time

Rain[] drops = new Rain[numDrops]; // Declare and create the array
Rain r1;

final int WIDTH = 30; 
final int HEIGHT = 23;
int [][] level = new int[HEIGHT][WIDTH];

Player p1;

boolean right = false, left = false, up = false; 

import ddf.minim.*;
AudioPlayer player;
Minim  minim;

void setup() {
  size(480,368);
  p1 = new Player(WIDTH * 11,HEIGHT * 12);
  
   minim= new Minim(this);
   player=minim.loadFile("05. Flower Dance.mp3");
   player.play();
   
     //Loop through array to create each object
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain(); // Create each object
    r1 = new Rain();  
  }
  
}

void draw(){
   p1.update();
   
  background (200);
   drawLevel();
    p1.show();
  
  fill(255,80);
  rect(0,0,600,600);
  //Loop through array to use objects.
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    
  }

}



void drawLevel() {
  fill(0);
  noStroke();
  for ( int ix = 0; ix < WIDTH; ix++ ) {
    for ( int iy = 0; iy < HEIGHT; iy++ ) {
      switch(level[iy][ix]) {
        case 1: rect(ix*16,iy*16,16,16);
      }
    }
  }
}
 
boolean place_free(int xx,int yy) {
//checks if a given point (xx,yy) is free (no block at that point) or not
  yy = int(floor(yy/16.0));
  xx = int(floor(xx/16.0));
  if ( xx > -1 && xx < level[0].length && yy > -1 && yy < level.length ) {
    if ( level[yy][xx] == 0 ) {
      return true;
    }
  }
  return false;
}
 
void keyPressed() {
  switch(keyCode) {
    case RIGHT: right = true; break;
    case LEFT: left = true; break;
    case UP: up = true; break;
  }
}
void keyReleased() {
  switch(keyCode) {
    case RIGHT: right = false; break;
    case LEFT: left = false; break;
    case UP: up = false; break;
  }
}

