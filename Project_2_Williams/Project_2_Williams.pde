//Orb orb;
Orb[] orb = new Orb[80];
Orb2[] orb2 = new Orb2[80];
//int more;
//Mouse click;

void setup() {
  size(800, 700);
  background(0);
  //orb = new Orb(0, random(0, 500));
  //orb2[] = new Orb2[more];  //tried making an array of the class
  //orb2 = new Orb2(800, random(0, 500)); 
  //click = new Mouse();
  for (int i = 0; i < orb.length; i++) {
    orb[i] = new Orb(random(-5000, 0), random(0, 800), color(255, 200, 0));
    orb2[i] = new Orb2(random(800, 5000), random(0, 800));
  }
  
}



void draw() {
  //orb.show();
  //orb2.show();
  //click.click();

  for (int i = 0; i < orb.length; i++) {
    orb[i].show();
    orb2[i].show();
  }
}

