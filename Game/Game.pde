float X;
float Y;

void setup(){
  size(800,600);
  background(13,45,60);
  frameRate(15);
}

void draw(){

      Level();
       
      
   //Player Controller
      Player();

      if (keyPressed){
        if (key == 's'){
          Y = Y+50;
        }
      }
      
      if (keyPressed){
        if (key == 'w'){
          Y = Y-50;
        }
      }
      
      if (keyPressed){
        if (key == 'a'){
          X = X-50;
        }
      }
      
      if (keyPressed){
        if (key == 'd'){
          X = X+50;
        }
      }
   
}


void Player(){
  fill (140,78,0);
  rect(X,Y,50,50);
}

void Level(){
    //Level Design
      fill(0,80,0);
      strokeWeight(1);
      rect(100,50,500,50);
      rect(0,200,500,50);
      rect(250,350,700,50);
      rect(250,500,700,50);
}
