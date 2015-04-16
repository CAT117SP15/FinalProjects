class Player{
  
int playerX,playerY;

Player(){
  playerX = 50;
  playerY = 50;
}

void create(){
  fill(45,89,120);
  rect(playerX,playerY,50,50);
}

void moveup(){
  playerY--;
}

void movedown(){
  playerY++;
}

void moveleft(){
  playerX--;
}

void moveright(){ 
   playerX++;
}
}

