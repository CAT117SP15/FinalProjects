float rotateAmt= 0.0;

void setup() {
  size(1000, 500, P2D);
  frameRate(60);
  smooth();
  background(200, 0, 0);
}


void draw() {

  pushMatrix();                      
    translate(width/2, height/2);

    //fill(255, 0, 0);
    noFill();
    stroke(0);
    strokeWeight(5);
    ellipse(0, 0, 1025, 1025);
    ellipse(0, 0, 900, 900);
    ellipse(0, 0, 775, 775);
    ellipse(0, 0, 650, 650);
    ellipse(0, 0, 525, 525);
    ellipse(0, 0, 400, 400);
    ellipse(0, 0, 275, 275);


    rotate(rotateAmt*TWO_PI/360);     //Commenting this out helps improve
                                      //performance, but removes the rotation feature.
   
    fill(0);
    noStroke();

    ellipse(0, 0, 50, 50);

    ellipse(135, 0, 50, 50);
    ellipse(-70, -115, 50, 50);
    ellipse(-70, 115, 50, 50);

    ellipse(95, -170, 50, 50);
    ellipse(-200, 0, 50, 50);
    ellipse(115, 160, 50, 50);

    ellipse(265, 0, 50, 50);
    ellipse(-145, -215, 50, 50);
    ellipse(-145, 215, 50, 50);

    rotateAmt ++;
  popMatrix();


  //This code bellow was created by user renaud from openprocessing.org
        fill((1+sin(float(millis())/2000))*123);
        ellipse(mouseX, mouseY, 40, 40);
        filter(DILATE);
        filter(BLUR);
  //I do not take ownership or credit for these lines of code.
  //Not entirely sure if this is the way to give credit but yeah... :-)
  //These lines of code generate dynamic interactive smoke in the program.
}

