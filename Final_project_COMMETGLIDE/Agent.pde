//enemy class
class Agent {
  
  //Body body;
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Agent(float m, float x, float y) {
    mass = m;
    location = new PVector (x, y);
    velocity = new PVector (0, 0);
    acceleration = new PVector (0, 0);
    //makeBody(new Vec2(x,y));
    //body.setUserData(this);
  }
  
  /*boolean contains(float x, float y) {
    Vec2 worldPoint = box2d.coordPixelsToWorld(x,y);
    Fixture f = body.getFixtureList();
    boolean inside = f.testPoint(worldPoint);
    return inside;
  }*/

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void applyForce (PVector force) { //gravity method
    PVector f = force.get();  //gets copy of that force to use within system
    //basic gravity
    f.div(mass);
    acceleration.add(f);
  }

  void display() {  //appearance method for any given Agent
    stroke(0);
    strokeWeight(1);
    fill(255, 70, 60);
    rectMode(CENTER);
    rect(location.x, location.y, mass*20, mass*20);
  }

  void checkEdges() { //this ensures objects do not exit screen
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    }
    if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
  }
  void upScore() {
    if (location.y > height) {
      location.y = 0;
      velocity.y = -0.1;
      score++;
  }
}
}



