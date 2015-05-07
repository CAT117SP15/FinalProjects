class Player {
  int x,y;
  float xSpeed, ySpeed; 
  float accel,deccel;
  float maxXspd,maxYspd;
  float xSave,ySave;
  int xRep,yRep;
  float gravity;
  Player (int _x, int _y ) {
    x = _x;
    y = _y;
    xSpeed = 0;
    ySpeed = 0;
    accel = 0.5;
    deccel = 0.5;
    maxXspd = 2;
    maxYspd = 12;
    xSave = 0;
    ySave = 0;
    xRep = 0; 
    yRep = 0; 
    gravity = 0.25; 
  }
  void update() {
    if ( right ) {
      xSpeed += accel; 
      if ( xSpeed > maxXspd ) {
        xSpeed = maxXspd; 
      }
    }
    else if ( left ) {
      xSpeed -= accel;
      if ( xSpeed < -maxXspd ) {
        xSpeed = -maxXspd; 
      }
    }
    else { //neither right or left pressed, decelerate
    if ( xSpeed > 0 ) {
      xSpeed -= deccel;
      if ( xSpeed < 0 ) {
        xSpeed = 0;
      }
    }
   else if ( xSpeed < 0 ) {
     xSpeed -= deccel;
     if ( xSpeed > 0 ) {
       xSpeed = 0;
     }
   }
 }
    if ( up ) {
      if ( !place_free(x,y+16) || !place_free(x+15, y+16) ) {
        ySpeed = -5.3;
      }
    }
    ySpeed += gravity;
    
    xRep = 0;
    yRep = 0;
    xRep += floor(abs(xSpeed));
    yRep += floor(abs(ySpeed));
    xSave += abs(xSpeed)-floor(abs(xSpeed));
    ySave += abs(ySpeed)-floor(abs(ySpeed));
    int signX = (xSpeed<0) ? -1 : 1;
    int signY = (ySpeed<0) ? -1 : 1;
    int offsetX = (xSpeed<0) ? 0 : 15;
    int offsetY = (ySpeed<0) ? 0 : 15; 
    
    if ( xSave >= 1) {
      xSave -= 1; 
      xRep++; 
    }
    if ( ySave >= 1 ) {
      ySave -= 1; 
      yRep++;
    }
    for ( ; yRep > 0; yRep--) {
      if ( place_free(x,y+offsetY+signY) && place_free(x+15,y+offsetY+signY) ) {
        y += signY;
      }
      else {
        ySpeed = 0;
      }
    }
    for ( ; xRep > 0; xRep-- ) {
      if ( place_free(x+offsetX+signX,y) && place_free(x+offsetX+signX,y+15) ) {
        x += signX;
      }
      else {
        xSpeed = 0;
      }
    }
  }
  void show() {
    pushMatrix();
    fill(255,0,0);
    noStroke();
    rect(x,y,16,16);
    popMatrix();
  }
}
    





