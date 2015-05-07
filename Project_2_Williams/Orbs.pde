class Orb {
  
  int circleSize;
  float cx; // null
  float cy; // null
  float storeMX; //null
  float storeMY; //null
  float posX;
  float posY;
  int x;
  int score;
  color c;
  int death;
  boolean lose = true;
  boolean win = false;

  Orb(float locX, float locY, color wow) { //allow changes to be made to the orbs x and y coordinates

    textSize(20); //Text in the corner for score
    text(x, 20, 20);
    circleSize = 30;
    c = wow; //allows the color change of the object
    posX = locX; //posX = locX to pass parameters in Orb() to be able to change it
    posY = locY;
    posX = posX + 0.2; // the orb will always move right
  }

  void show() {
    smooth();
    posX++;
    ellipse(posX, posY, circleSize, circleSize); //make the orb
    if (posX > 800 && x < 1000) {
      background(125, 0, 0, 100); // Game over screen is red if the orb reaches the end
      textSize(72);
      text("Nice Try", 250, 350);
      /*void capture() {
       if (posX > 600 && lose == true && x > 1000) {
       score = score + 1;
       } //else if (posX < 600) {
       lose = false;
       }
       }*/
    }
    if (mousePressed) {
      if (dist(mouseX, mouseY, posX, posY) < circleSize/2) { // capture the mouse's coordinates in relation to the orbs
        text(x, 30, 30);
        x = x + 100; 
        fill(255, 200, 0);
        ellipse(posX, posY, circleSize + 1, circleSize + 1); //create a yellow orb around the first moving ones
        // Check to see if mouse click is working
      }
    }
  }
}

