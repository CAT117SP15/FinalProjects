int space=80;
int hormove=0; //horizonal movement

float xpos, ypos, zpos, xlookat, ylookat, zlookat;
float x, y, z;
float tx, ty, tz;
float rotX, rotY; //rotate x and y position
float xComp, zComp;
float easing = 0.05;

void setup() {
  size(640, 360, P3D); 
  background(0);
  x = width/2;
  y = height/2;
  z = (height/2);
  tx = width/2; //translate x
  ty = height/2; //translate y
  tz = 0; //translate z
  rotX = 0; //rotate in the X position
  rotY = 0; //rotate in the Y position
  xComp = tx - x; // x composition
  zComp = tz - z; // z composition
}

void draw() {
  lights();
  background(0);
  pushMatrix();
  if (keyPressed) { //Controls for the player movement WASD
    if (key == 's' || key == 'S') { //moves player back
      xpos-=6;
    }
    if (key == 'a' || key == 'A') { //moves player left
      zpos+=6;
    }
    if (key == 'w' || key == 'W') { //moves player forward
      xpos+=6;
    }
    if (key == 'D' || key == 'd') { //moves player right
      zpos-=6;
    }
  }
  if (mouseX<(width/2)-200) {
    hormove-=1;
  }
  if (mouseX>(width/2)+200) {
    hormove+=1;
  }
  translate(zpos, 0, xpos); // moves player in the x and z axis
  rotateY(radians(hormove)); //rotates horizonally 
  for (float x=0; x<width; x+=space) {
    for (float z=0; z< (200); z+=space) {
      for (float y=0; y<height+1; y+=height) {
        pushMatrix();
        translate(x, y, z);
        noStroke();
        fill(40); //color for boxes
        box(2000, 100, 2000); //size of the room
        box(400);
        popMatrix();
      }
    }
  }
  popMatrix();
  pushMatrix();            
  float targetX = mouseX; //https://processing.org/examples/easing.html
  float dx = targetX - x;  // makes sphere follow the cursor in the X direction
  if (abs(dx) > 1) {
    x += dx * easing;
  }

  float targetY = mouseY; // https://processing.org/examples/easing.html
  float dy = targetY - y; // makes sphere follow the cursor in the Y direction 
  if (abs(dy) > 1) {
    y += dy * easing;
  }

  translate(x, y, z);
  fill(255, 255, 143, 50); //makes the sphere transparent 
  sphere(20); //transparent sphere
  popMatrix();
 
  
}

