/**
 * Ball & Chambers
 * cite: forum.processing.org/two/discussion/10680/collision-colors
 * by Rareware0192 (Jonathan Pelegrini)
 * Special Thanks to: GoToLoop & TfGuy44
 */

static final int BALLS = 4;
final Ball[] balls = new Ball[BALLS];

static final int CHAMBERS = 8;
final Chamber[] chambers = new Chamber[CHAMBERS];

void setup() {
  size(640, 440);
  smooth();
  frameRate(60);
  ellipseMode(CENTER);
  rectMode(CORNER);
  strokeWeight(2);
  stroke(0);

  balls[0] = new Ball(50, 50, 4, 2);
  balls[1] = new Ball(50, 80, 3, 5);
  balls[2] = new Ball(100, 150, 4, 5);
  balls[3] = new Ball(300, 300, 6, 2);

  chambers[0] = new Chamber(0, 0, #FF0000); // red chamber
  chambers[1] = new Chamber(600, 0, #00FF00); // green chamber
  chambers[2] = new Chamber(0, 400, #0000FF); // blue chamber
  chambers[3] = new Chamber(600, 400, #FF00FF); // pink chamber
  chambers[4] = new Chamber(300, 0, #FFFF00); // yellow chamber
  chambers[5] = new Chamber(300, 400, #00FFFF); // cyan chamber
  chambers[6] = new Chamber(0, 200, #FA9600); // orange chamber
  chambers[7] = new Chamber(600, 200, #A100FA); // purple chamber
}

void draw() {
  background(240);

  for (Ball b : balls) {
    for (Chamber c : chambers)  if (b.colliding(c)) {
      b.c = c.c;
      break;
    }

    b.script();
  }

  for (Chamber c : chambers)  c.display();
}

static final int sq(int n) {
  return n*n;
}

