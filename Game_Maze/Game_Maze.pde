boolean start;
boolean win;
boolean winner;

//Creates Player And Blocks
Block player;


//Canvas Setup
void setup() {
  size(800, 600);
  frameRate(120);
  player = new Block(53, 53);
  start = false;
  winner = false;
}


//Canvas sketch
void draw() {
  if (!start) {
    background(32, 55, 115);
    fill(0, 0, 0);
    textSize(50);
    text("Maze Game", 250, 150);
    textSize(30);
    text("By: Nyoka Shortt", 260, 250);
    textSize(20);
    text("Use the mouse to move around the maze and reach the goal", 130, 350);
    text("Find the hidden goal in the maze", 240, 380);
    text("Don't touch the maze or it game over", 20, 420);
    rect(30, 50, 80, 60);
    fill(255, 255, 255);
    textSize(25);
    text("Start", 40, 100);
    if ( mouseX > 40 && mouseX < 99 && mouseY > 50 && mouseY < 110 ) {
      if (mousePressed && (mouseButton == LEFT)) {
        start = true;
      }
    }
  } else {

    background(0);
    fill(0, 0, 55);
    maze();

    //Goal 
    noFill();
    rect(655, 200, 95, 50);

    //Goal Collision Test
    if (win(mouseX, mouseY) || win(mouseX+50, mouseY+50)) {
      winner = true;
    }

    player.display();
    player.checkOne();


  }

  //Stop Other Actions From Happening
  if (winner == true) {
    background(22, 78, 90);
    textSize(50);
    text("YOU WON!!!", 230, 300);
  }
}

//Collision Setup For Goal
boolean win(float x, float y) {
  if (x > 655 && x < 740) {
    if (y > 200 && y < 250) {
      return true;
    }
  }
  return false;
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

