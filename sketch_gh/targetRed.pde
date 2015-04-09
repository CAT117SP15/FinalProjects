class targetRed {

float x = 800;
float y = -30;
float a = 40;
float c = 40;
float speed = 0.5;
color d1 = color (250, 10, 30);

targetRed (float _speed) {
      

speed = _speed;
}

void run() {
  
  display();
  movement();

}
void display () {
  
  fill (d1);
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
