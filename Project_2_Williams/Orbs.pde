class Orb{
  

  float posX;
  float posY;
  float x;
  float y;
  //boolean b = true;
  
  Orb(float locX , float locY){ //allow changes to be made to the orbs x and y coordinates
    
    posX = locX; //posX = locX to pass parameters in Orb() to be able to change it
    posY = locY;
    //x = x + 1;
    posX = posX + 1; // the orb will always move right
    x = mouseX;
    y = mouseY;
    //x = posX;
    
  }
  
  
  
  void show(){
    smooth();
    fill(255);
    posX++;
    ellipse(posX, posY, 30, 30); //make the orb
      if (posX > width - 30){
        background(125, 0, 0); // Background changes to red if the orb reaches the end
            
      }
    print("x is "); //Tell me what is the x value
    println(x);
    ellipse(x, y, 10, 10);
    
     if (mousePressed){
       // if (x = posX) {
          //if (y = posY) {
            fill(125, 0, 0);
          
          }
          
        }
    
        
     // }
  //}
  
}
