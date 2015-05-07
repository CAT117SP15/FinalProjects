int space=80;
int hormove=0;

float xpos, ypos, zpos, xlookat, ylookat, zlookat;
int spotLightMode = 4;
float x, y, z;
float tx, ty, tz;
float rotX, rotY;
float mX, mY;
float frameCounter;
float xComp, zComp;
float angle;
int standHeight = 100;


void setup() {
  size(640, 360, P3D); 
  background(0);
  x = width/2;
  y = height/2;
  y-= standHeight;
  z = (height/2) / tan(PI*60.0 / 360.0);
  tx = width/2;
  ty = height/2;
  tz = 0;
  rotX = 0;
  rotY = 0;
  xComp = tx - x;
  zComp = tz - z;
  angle = 0;
}

void draw() {
  lights();
  
  background(0);
  pushMatrix();
  if (keyPressed) {
    if (key == 's' || key == 'S') {
      xpos-=4;
    }
    if (key == 'a' || key == 'A') {
      zpos+=4;
    }
    if (key == 'w' || key == 'W') {
      xpos+=4;
    }
    if (key == 'D' || key == 'd') {
      zpos-=4;
    }
  }
  if (mouseX<(width/2)-200) {
    hormove-=1;
  }
  if (mouseX>(width/2)+200) {
    hormove+=1;
  }
  translate(zpos, 0, xpos);
  rotateY(radians(hormove));
  for (float x=0; x<width; x+=space) {
    for (float z=0; z< (200); z+=space) {
      for (float y=0; y<height+1; y+=height) {
        pushMatrix();
        translate(x, y, z);
        noStroke();
        fill(255);
        box(space);
        popMatrix();
      }
    }
  }
  popMatrix();
  
}

