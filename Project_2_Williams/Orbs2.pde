class Orb2{
  
  float posX;
  float posY;
  int x;
  int y;
  
  
  Orb2(float locX , float locY){
    
    posX = locX;
    posY = locY;
    //x = x + 1;
    posX = posX - 1; // Same as Orb 1 but goes from right to left instead
  }
  
  
  
  void show(){
    smooth();
    fill(255);
    posX--;
    ellipse(posX, posY, 30, 30);
      if (posX < width + 30){
        //background(125, 0, 0);
            
      }
    print("x is ");
    println(x);
    
    
  }
  
  
  
  
}
