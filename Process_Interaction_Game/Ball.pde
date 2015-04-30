class Ball
{
  float x = 0;
  float y = 0;
  float xSpeed = 0;
  float ySpeed = 0;
  int radius = 15;

  Ball(float tempX, float tempY, float tempxSpeed, float tempySpeed, int tempRadius, color fillColor)
  {
    x = tempX;
    y = tempY;
    xSpeed = tempxSpeed;
    ySpeed = tempySpeed;
    radius = tempRadius;
  }

  void display(int xParam, int yParam ) {
    ellipse(x + xParam, y + yParam, radius, radius);
  }
  
  void update(int xSpeed, int ySpeed){
    x = x + xSpeed;
    
  }
  
}

