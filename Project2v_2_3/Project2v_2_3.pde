//Declare
ArrayList ballClutter;



void setup() {
  size(600, 600);
  smooth();
  randomSeed(1);
    
  //Setup
  ballClutter = new ArrayList();
  
  //for(int i = 0; i < 100; i++){
  //Ball myBall = new Ball(random(0,width),random(0,200));
  //ballClutter.add(myBall);
  
}

void draw() {
  background(0);
  
//  if(dist(x, y, mouseX, mouseY) <=50) {
   // background(255,0,0);
//  }
  //else{
   // background(255);
//  }
  
  
  if(ballClutter.size() <= 100) {
 Ball myBall = new Ball(random(0,width),random(0,200));
 ballClutter.add(myBall);
  }  
//Call

for(int i = 0; i < ballClutter.size(); i++) {
 Ball mb = (Ball) ballClutter.get(i);
mb.run();
if(mb.isdead())
ballClutter.remove(i);

}
}
