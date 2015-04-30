class Orb2 {

  int circleSize;
  float cx;
  float cy;
  float storeMX;
  float storeMY;
  float posX;
  float posY;
  int x;
  float y;
  color c;
  int death = 0;
  boolean dead = false;

  Orb2(float locX, float locY, color wow) {
    circleSize = 30;
    c = wow;
    posX = locX; //posX = locX to pass parameters in Orb() to be able to change it
    posY = locY;
    posX = posX + 1; // the orb will always move right
  }



  void show() {
    smooth();
    fill(255);
    posX--;
    ellipse(posX, posY, 30, 30);
    if (posX < width + 30) {
      //background(125, 0, 0);
    }
    if (mousePressed) {
      //if (mouseButton ==LEFT) {
      if (dist(mouseX, mouseY, posX, posY) < circleSize/2) {

        fill(255, 200, 0);
        ellipse(posX, posY, circleSize + 1, circleSize + 1);
        x = x + 100;
      }
    }
  }
}

