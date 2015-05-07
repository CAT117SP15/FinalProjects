class Ball{
  float x = 0;
  float y = 0;
  float speedX = random(-1,1);
  float speedY = random(-1,1);
  //float d = dist(x, y, mouseX, mouseY); 
  int lifespan; 
  PVector location;
  PVector velocity;
  
  
  Ball(float _x, float _y){
    
    x = _x;
    y = _y;
    
    lifespan = 400; 
    location = new PVector(x,y);
    velocity = new PVector(0,0);
  }
  
  
  void run(){
    display();
    move();
    bounce();
    gravity();
   
  }

void gravity(){
 speedY += 0.2; 
  
}


void bounce(){
 if(x > width){
  speedX = speedX * -1;
 } 
 if(x < 0){
  speedX = speedX * -1;
 }  
  if(y > height){
  speedY = speedY * -1;
 } 
 if(y < 0){
  speedY = speedY * -1;
 } 
 
}

void move(){
  x += speedX;
  y += speedY;
}

void display(){
  ellipse(x,y,20,20);
  lifespan -= 1;
 
}

boolean isdead()
{
  if(lifespan <= 0) 
  return true;
  else
  return false;
  
}

}

