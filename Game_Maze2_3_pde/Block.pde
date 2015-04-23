class Block {
  PVector location;

  //Variable For Key Block
  boolean keyUp, keyDown, keyRight, keyLeft;

  Block(int x, int y) {
    keyUp = true;
    keyDown = true;
    keyRight = true;
    keyLeft = true;
    location = new PVector(x,y);
  }

  void control() {
    //Player Appearance
    fill(67, 140, 155);
    rect(location.x, location.y, 95, 95);

    //Player Controller
    if (key == 'w' && keyUp == true) {
      checkCollideUp();
      location.y--;
    }


    if (key == 's' && keyDown == true) {
      checkCollideDown();
      location.y++;
    }

    if (key == 'd' && keyRight == true) {
      checkCollideRight();
      location.x++;
    }

    if (key == 'a' && keyLeft == true) {
      checkCollideLeft();
      location.x--;
    }
  }

  //Check For Collision Between Player/Blocks And Maze
  void checkCollideUp() {
    if ((collideZero(location.x, location.y)) ||(collideOne(location.x, location.y)) ||
      (collideTwo(location.x, location.y)) || (collideThree(location.x, location.y)) || 
      (collideFour(location.x, location.y)) ||(collideFive(location.x, location.y)) || 
      (collideSix(location.x, location.y))  ||(collideSeven(location.x, location.y))) {

      keyUp = false;
      keyDown = true;
      keyLeft = false;
      keyRight = true;

      location.y = location.y + 4;
    }
  }

  void checkCollideDown() {
    if ((collideZero(location.x, location.y+95)) ||(collideOne(location.x, location.y+95)) ||
      (collideTwo(location.x, location.y+95)) || (collideThree(location.x, location.y+95)) || 
      (collideFour(location.x, location.y+95)) ||(collideFive(location.x, location.y+95)) || 
      (collideSix(location.x, location.y+95)) ||(collideSeven(location.x, location.y+95))  ||
      (collideEight(location.x, location.y))) {

      keyDown = false;
      keyUp = true;
      keyLeft = false;
      keyRight = true;

      location.y = location.y - 4;
    }
  }

  void checkCollideRight() {
    if ((collideZero(location.x+95, location.y+95)) ||(collideOne(location.x+95, location.y+95)) ||
      (collideTwo(location.x+95, location.y+95)) || (collideThree(location.x+95, location.y+95)) || 
      (collideFour(location.x+95, location.y+95)) ||(collideFive(location.x+95, location.y+95)) || 
      (collideSix(location.x+95, location.y+95)) ||(collideSeven(location.x+95, location.y+95))  ||
      (collideEight(location.x+95,location.y+95))) {

      keyLeft = true;
      keyDown = true;
      keyUp = true;
      keyRight = false;

      location.x = location.x - 4;
    }
  }

  void checkCollideLeft() {
    if ((collideZero(location.x, location.y)) ||(collideOne(location.x, location.y)) ||
      (collideTwo(location.x, location.y)) || (collideThree(location.x, location.y)) || 
      (collideFour(location.x, location.y)) ||(collideFive(location.x, location.y)) || 
      (collideSix(location.x, location.y))  ||(collideSeven(location.x, location.y))) {


      keyLeft = false;
      keyDown = true;
      keyUp = true;
      keyRight = true;

      location.x = location.x + 3;
    }
  }



  //Setup For Collision Test
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

