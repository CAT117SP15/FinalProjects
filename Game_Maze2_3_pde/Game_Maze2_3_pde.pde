//Creates Player And Blocks
Block player;
Block playertwo;


//Canvas Setup
void setup() {
  size(800, 600);
  frameRate(120);
  player = new Block(53, 53);
  playertwo = new Block(202, 50);
}

//Canvas sketch
void draw() {
  background(0);
  fill(0, 0, 55);
  maze();
  player.control();
  playertwo.control();
}

//Maze Setup
void maze() {
  noStroke();
  rect(0, 0, 50, 600); //Zero
  rect(150, 0, 50, 450); //One
  rect(0, 0, 800, 50);  //Two
  rect(300, 150, 50, 450);  //Three
  rect(450, 150, 350, 50); //Four
  rect(450, 200, 50, 248); //Five
  rect(600, 200, 50, 248); //Six
  rect(0, 550, 800, 50); //Seven
  rect(750, 0, 50, 600); //Eight
}


