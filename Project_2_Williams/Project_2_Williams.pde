Orb[] orb = new Orb[80];
Orb2[] orb2 = new Orb2[80];
String count;

void setup() {
  size(800, 700);
  background(0);
  for (int i = 0; i < orb.length; i++) {
    //if (int i = -abs(i/2)) {
    //}
    orb[i] = new Orb(random(-5000, 0), random(0, 800), color(255, 200, 0));
    orb2[i] = new Orb2(random(800, 5000), random(0, 800), color(123, 24, 0));
    
  }
}





void draw() { 
  for (int i = 0; i < orb.length; i++) {
    orb[i].show(); //Orbs going from left to right
    orb2[i].show();  //Orbs going from right to left
  }
}


