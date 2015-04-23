void setup(){ //setup
size(800, 800);
}

void draw(){
background(100);
  rect(mouseX, mouseY, 50, 50); //''player''. established mouse control
rect(0, 0, 800,  100); //wall #1

rect(200, 200, 100, 400); //wall #2
rect(200, 350, 400, 100); // wall #3


rect(700, 700, 100, 100); //goal
//the walls so far are just a rough starting point in order for me to learn how to make the player ''die'' when they touch the walls.

}






