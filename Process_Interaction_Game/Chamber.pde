class Chamber {
  static final short dimensions = 40, radius = dimensions >> 1;

  int x, y;
  color c;

  Chamber(int tempX, int tempY, color tempC) {
    x = tempX;
    y = tempY;
    c = tempC;
  }

  void display() {
    fill(c);
    rect(x, y, dimensions, dimensions);
  }
}

