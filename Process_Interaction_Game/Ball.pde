class Ball {
  static final short dimensions = 25, radius = dimensions >> 1;

  int x, y, xVelocity, yVelocity;
  color c = -1;

  Ball(int tempX, int tempY, int tempxVelocity, int tempyVelocity) {
    x = tempX;
    y = tempY;
    xVelocity = tempxVelocity;
    yVelocity = tempyVelocity;
  }

  void script() {
    update();
    display();
  }

  void update() {
    if ((x += xVelocity) > width  - radius | x < radius)  xVelocity *= -1;
    if ((y += yVelocity) > height - radius | y < radius)  yVelocity *= -1;
  }

  void display() {
    fill(c);
    ellipse(x, y, dimensions, dimensions);
  }

  boolean colliding(Chamber c) {
    return sq(c.x + Chamber.radius - x) + sq(c.y + Chamber.radius - y)
      < sq(Chamber.radius + radius);
  }
}

