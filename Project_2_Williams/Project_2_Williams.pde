import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;


Minim play;
AudioPlayer game;


Orb[] orb = new Orb[80];
Orb2[] orb2 = new Orb2[80];
String count;
boolean intro = true;


void setup() {
  size(800, 700);
  //background(0);
  play = new Minim(this);
  game = play.loadFile("GameSong.aif");
  game.loop();
  for (int i = 0; i < orb.length; i++) {
    orb[i] = new Orb(random(-5000, 0), random(0, 670), color(255, 200, 0));
    orb2[i] = new Orb2(random(800, 5000), random(0, 800), color(123, 24, 0));
  }
  // Orb[].capture();
}





void draw() {
  if (intro == true) {
    background(0);
    fill(255);
    textSize(20);
    text("Welcome to Click Carnival", 30, 30);
    text("A set amount of orbs will fly from either direction", 30, 70);
    text("This is a survival game, meaning it is nearly endless", 30, 50);
    text("To survive focus on only the orbs flying from right to left", 30, 90);
    fill(255, 39, 39);
    text("Click and Hold on the orbs and fill their meter to 1000", 30, 110);
    text("Try to fill them to 1000 before they reach the end", 30, 130);
    fill(255);
    text("The meter is in the upper right hand corner", 30, 150);
    text("Good Luck and Have Fun", 30, 170);
    fill(255, 39, 39);
    text("Unfortunately, there is no scoreboard so play to your hearts content", 30, 190);

    if (keyPressed) {
      intro = false;
    }
  }
  if (intro == false) {
    background(0);

    for (int i = 0; i < orb.length; i++) {
      orb[i].show(); //Orbs going from left to right
      orb2[i].show();  //Orbs going from right to left
    }
  }
  /*if (keyPressed) {
   if (key == 'a' && intro == false) {
   setup();
   }
   }*/
}

