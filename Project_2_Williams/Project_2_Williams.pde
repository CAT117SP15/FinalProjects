Orb orb;
Orb2 orb2;

void setup(){
  size(800,700);
  background(0);
  orb = new Orb(0, random(0, 500));
  orb2 = new Orb2(800, random(0, 500));
}


void draw(){
  orb.show();
  orb2.show();
  
  
}
