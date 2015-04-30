class Orb {

  int circleSize;
  float cx; // null
  float cy; // null
  float storeMX; //null
  float storeMY; //null
  float posX;
  float posY;
  int x;
  float y;
  color c;
  int death = 0;
  boolean dead = false;

  Orb(float locX, float locY, color wow) { //allow changes to be made to the orbs x and y coordinates

    textSize(20); //Text in the corner for score
    text(x, 20, 20);
    circleSize = 30;
    c = wow; //allows the color change of the object
    posX = locX; //posX = locX to pass parameters in Orb() to be able to change it
    posY = locY;
    posX = posX + 1; // the orb will always move right
  }

  void show() {

    smooth();
    //fill(c);
    posX++;
    ellipse(posX, posY, circleSize, circleSize); //make the orb
    if (posX > width - 10) {
      background(125, 0, 0, 100); // Game over screen is red if the orb reaches the end
      textSize(72);
      text("GAME OVER", 200, 350);
    } else switch(death) { //Win-Lose activator (work in progress)

      /*case 1:
       background(0, 125, 0);
       case 2:*/
    }
      if (mousePressed) {
    //if (mouseButton ==LEFT) {
    if (dist(mouseX, mouseY, posX, posY) < circleSize/2) { // capture the mouse's coordinates in relation to the orbs
      text(x, 30, 30);
      x = x + 100; //The supposed scoreboard (currently overlapping numbers)
      fill(255, 200, 0);
      ellipse(posX, posY, circleSize + 1, circleSize + 1); //create a yellow orb around the first moving ones
      // Check to see if mouse click is working
    }
  }






    //tint(125, 0, 0);
    //dead = true;
    //death = 1;
    //destroy();
    //ellipse(posX, posY, circleSize + 2, circleSize + 2);
  }
  // }
}









/* void mousePressed() {
 if (mouseButton == LEFT) {
 cx = mouseX;
 cy = mouseY;
 dead = true;
 }
 if (dead = true) {
 
 }
 }*/
