ArrayList<Wall> walls = new ArrayList<Wall>();

int playerWidth = 50;

int goalX, goalY, goalWidth, goalHeight;

void setup(){ //setup
  size(800, 800);
  walls.add(new Wall(0, 0, 800, 100));
  walls.add(new Wall(200, 200, 100, 400));
  walls.add(new Wall(200, 350, 400, 100));
  goalX = goalY = 700;
  goalWidth = goalHeight = 100;
}

void draw(){
  background(100); //Attempted to add background and player art to game but unable to get it to work. Art can be found in data folder though.
  rect(mouseX, mouseY, playerWidth, playerWidth); //''player''. established mouse control

  for(Wall w : walls)
  {
    w.render();
  }

  rect(goalX, goalY, goalWidth, goalHeight); //goal

  //println();
  boolean colliding = false;
  for(Wall w : walls)
  {
    //println("test vs: " + w.minY);
    if (mouseX + playerWidth < w.minX)
    {
      //println("left");
      continue;
    }
    if (mouseX > w.minX + w.widthX)
    {
      //println("right");
      continue;
    }
    if (mouseY + playerWidth < w.minY)
    {
      //println("above");
      continue;
    }
    if (mouseY > w.minY + w.widthY)
    {
      //println("below");
      continue;
    }
    
    colliding = true;
    break;
  }
  
  //loss condition here
  if (colliding)
  {
    println("Try Again");
   
  }
  
  //test for win 
  colliding = true;
  if (mouseX + playerWidth < goalX)
  {
    colliding = false;
  }
  else if (mouseX > goalX + goalWidth)
  {
    colliding = false;
  }
  else if (mouseY + playerWidth < goalY)
  {
    colliding = false;
  }
  else if (mouseY > goalY + goalHeight)
  {
    colliding = false;
  }
  
  //win condition here
  if (colliding)
  {
    println("WIN!!!!!!!!!");
    exit();
  }
}






