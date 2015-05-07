class Block {
  boolean lose;

  Block(int x, int y) {
    x = mouseX;
    y = mouseY;
    lose = false;
  }

  //Player Appearance
  void display() {

    if (lose == false) {
      //Player Appearance
      fill(67, 140, 155);
      rect( mouseX, mouseY, 50, 50);
    } else {

      if (lose == true) {
        background(22, 78, 90);
        textSize(50);
        text("Aww! You Lose!!", 230, 300);
      }
    }
  }

  //Check for collision
  void checkOne() {
    checkCollideOpt1();
    checkCollideOpt2();
  }


  //Check For Collision Between Player/Block And Maze
  void checkCollideOpt1() {
    if ((collideZero(mouseX, mouseY)) ||(collideOne(mouseX, mouseY)) ||
      (collideTwo(mouseX, mouseY)) || (collideThree(mouseX, mouseY)) || 
      (collideFour(mouseX, mouseY)) ||(collideFive(mouseX, mouseY)) || 
      (collideSix(mouseX, mouseY))  ||(collideSeven(mouseX, mouseY))) {

      lose =true;
    }
  }

  void checkCollideOpt2() {
    if ((collideZero(mouseX+50, mouseY+50)) ||(collideOne(mouseX+50, mouseY+50)) ||
      (collideTwo(mouseX+50, mouseY+50)) || (collideThree(mouseX+50, mouseY+50)) || 
      (collideFour(mouseX+50, mouseY+50)) ||(collideFive(mouseX+50, mouseY+50)) || 
      (collideSix(mouseX+50, mouseY+50)) ||(collideSeven(mouseX+50, mouseY+50))  ||
      (collideEight(mouseX+50, mouseY+50))) {

      lose = true;
    }
  }


  //Based Off Of Force Collision Demo By Daniel Shiffman
  //Setup For Collision Test Against Maze
  boolean collideZero (float x, float y) {
    if (x < 50) {
      return true;
    }
    return false;
  }

  boolean collideOne (float x, float y) {
    if (x > 150 && x < 200) {
      if (y < 450) {
        return true;
      }
    }
    return false;
  }

  boolean collideTwo (float x, float y) {
    if (x < 800) {
      if (y < 50) {
        return true;
      }
    }
    return false;
  }

  boolean collideThree (float x, float y) {
    if (x > 300 && x < 350) {
      if (y > 150) {
        return true;
      }
    }
    return false;
  }


  boolean collideFour (float x, float y) {
    if (x > 440) {
      if (y > 150 && y < 200) {
        return true;
      }
    }
    return false;
  }

  boolean collideFive (float x, float y) {
    if (x > 440 && x < 505) {
      if (y > 200 && y < 425) {
        return true;
      }
    }
    return false;
  }

  boolean collideSix (float x, float y) {
    if (x > 600 && x < 650) {
      if (y > 200 && y < 425 ) {
        return true;
      }
    }
    return false;
  }

  boolean collideSeven (float x, float y) {
    if ( x < 800) {
      if (y > 550) {
        return true;
      }
    }
    return false;
  }

  boolean collideEight (float x, float y) {
    if ( x > 750) {
      if (y < 600) {
        return true;
      }
    }
    return false;
  }
}

