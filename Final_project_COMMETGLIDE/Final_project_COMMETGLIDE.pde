import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;

Agent[] agents = new Agent [6];
//Agent blah;
Ship player;
int score;
PFont gameFont;
boolean lost = true;

Box2DProcessing box2d; // reference to box2d world


void setup() {
  size(400, 700);

  //randomSeed(1);

  gameFont = loadFont("BirchStd-48.vlw");  //the font for the score is initialized

  for (int i = 0; i < agents.length-1; i++ ) {
    //each indice point in this array list is going to be a new agent
    //blah = new Agent(m,x,y);
    agents[i] = new Agent (random(1, 5), random(width), 0);
  }
  player = new Ship(width/1.5, height/1.5); //create the player character
  

  textFont(gameFont, 38);
  fill(255);
  text("Hello, World!", 50, 200);
  score = 0;
}


void draw() {
  background(0);
  //step into box2d world
 // box2d.step();

  textFont(gameFont, 38);
  fill(255);
  text(str(score), 50, 680);

  for ( int i = 0; i < agents.length-1; i++ ) { //the agents (boxes) loop

    PVector wind = new PVector(random(-0.05, 0.03), 0);
    PVector gravity = new PVector (0, 0.05*agents[i].mass);

    player.shipMove();
    player.display();
    agents[i].upScore();
    agents[i].applyForce(wind);
    agents[i].applyForce(gravity);
    agents[i].update();
    agents[i].display();
    agents[i].checkEdges();
    
  }

}
  

