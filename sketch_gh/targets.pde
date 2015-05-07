class targetYellow {
  color a1 = color (250, 255, 3); 

float x = 200;
float y = 0;
float a = 40;
float c = 40;
float speed = 0.5;

targetYellow (float _speed) {
      

speed = _speed;
}

void run() {
  
  display();
  movement();

}
  void display () {
  
  fill (a1);
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
  } if (y > 800 && y < 840) {    
    y = random (-200, 0);
    score += 10;
  } if (y == 800) {
    y = random (-200, 0);
    score += 50;
  } 
}
}
