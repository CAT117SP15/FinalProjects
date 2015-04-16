float x, y;
Player player;
Crate one;


void setup() {
  size(500, 500);
  background(150);
  player = new Player();
  one = new Crate(); // red
  x = 50;
  y = 50;
}


void draw() {
  player.createPlayer();
  one.createCrate(); //red

  if (key == CODED) {
    if (keyCode == UP) {
      translate(0, y - 50);
      println("UP");
    }
  }
  if (key == CODED) {
    if (keyCode == DOWN) {
      translate(0, y + 50);
      println("DOWN");
    }
  }
  if (key == CODED) {
    if (keyCode == LEFT) {
      translate(x - 50, 0);
      println("LEFT");
    }
  }
  if (key == CODED) {
    if (keyCode == RIGHT) {
      translate(x + 50, 0);
      println("RIGHT");
    }
  }
}

