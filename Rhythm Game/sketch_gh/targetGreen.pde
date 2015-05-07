class targetGreen {

float x = 600;
float y = -100;
float a = 40;
float c = 40;
float speed = 0.5;
color c1 = color (25, 247, 52);

targetGreen (float _speed) {      
speed = _speed;
}

void run() {  
  display();
  movement();
}

void display () {  
  fill (c1);
  ellipse (x, y, a, c);
}

void movement() {  
  y += speed;
  if (y > 1000) {
    y = random (-200, 0);
    score -= 20;
  }
}

void buttonPress() {  
  if (y < 800 && y > 760) {
    y = random (-200, 0);
    score += 10;
  }
 
  if (y > 800 && y < 840) {    
    y = random (-200, 0);
    score += 10;
  }
 
  if (y == 800) {
    y = random (-200, 0);
    score += 50;
  } 
}
}
