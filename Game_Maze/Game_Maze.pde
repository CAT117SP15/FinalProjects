Player one;

//Canvas Setup
void setup(){
  size(800,600);
  background(0);
  one = new Player(); //Creates Player
}

//Canvas sketch
void draw(){
  background(53,76,12);
  maze();
  one.create();
  fill(30);
  
  //Controller
  if (keyPressed){
        if (key == 'w'){
          for(int i = 0; i < 10; i++)
          one.moveup();
        }
      }
      
      if (keyPressed){
        if (key == 's'){
          for(int i = 0; i < 10; i++)
          one.movedown();
        }
      }
      
      if (keyPressed){
        if (key == 'd'){
          for(int i = 0; i < 10; i++)
          one.moveright();
        }
      }
      
      if (keyPressed){
        if (key == 'a'){
          for(int i = 0; i < 10; i++)
          one.moveleft();
        }
      }
    
  //Collision For Level One  (Test)
  if((mouseX > 150 && mouseY < 500 && mouseX < 200) || //One
  (mouseX < 800 && mouseY < 50) || //Two
  (mouseX > 300 && mouseY > 150 && mouseX < 350)|| //Three
  (mouseX > 440 && mouseY > 210 && mouseY < 280)|| //Four
  (mouseX > 440 && mouseX < 505 && mouseY > 280 && mouseY < 500)|| //Five
  (mouseX > 590 && mouseX < 705 && mouseY > 280 && mouseY < 500))
  background(255);
}

//Level One Maze Set
void maze(){
  translate(0,0);
  pushMatrix();
    fill(255);
    noStroke();
    rect(0,0,50,600);
    rect(150,50,50,450); //One
    rect(0,0,800,50);  //Two
    rect(300,150,50,450);  //Three
    rect(450,220,350,50); //Four
    rect(450,220,50,280); //Five
    rect(600,220,100,280);
  popMatrix();
}

