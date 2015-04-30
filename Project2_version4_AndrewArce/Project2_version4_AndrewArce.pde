float rotateAmt= 0.0;
int stage;
int actRandomSeed = 0;
int count = 150;

void setup() {
  stage = 1;
  size(1000, 500, P2D);
  //frameRate(30);
  smooth();
  background(200, 0, 0);
}


void draw() {




  //This block of code is from the book Generative Design!

  float faderX = (float)mouseX/width;

  randomSeed(actRandomSeed);
  float angle = radians(360/float(count));

  for (int i = 0; i<count; i++) {
    float randomX = random(0, width);
    float randomY = random(0, height);

    float circleX = width/2 + tan(angle*i)*300;       //Originally, this code was set to form a circle if you moved the mouse furthest to the right.
    float circleY = height/2 + sin(angle*i)*300;      //Messing around with the sin, cos, and tan I changed its formation to an X like figure.

    //This is the original code.

    //float circleX = width/2 + sin(angle*i)*300;
    //float circleY = height/2 + cos(angle*i)*300;

    //This is the original code.

    float x = lerp(randomX, circleX, faderX);
    float y = lerp(randomY, circleY, faderX);

    fill(0);
    ellipse(x, y, 11, 11);
  }

  //This block of code is from the book Generative Design!
  //I do not take credit for these lines of code.



  //This is the startscreen. 
  //I put this because why not?
  if (stage==1) {
    background(200, 0, 0);
    pushMatrix();
    translate(width/2, height/2);
    fill(0);
    textSize(50);
    text("Interactive Composition", -400, 0);
    textSize(20);
    text("Press any key to begin", -398, 40);
    popMatrix();


    //This brings you to the program. 
    if (keyPressed == true) {
      stage = 2;
    }
  }

  if (stage==2) {

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


    rotate(rotateAmt*TWO_PI/360);    


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


    //Some of this code bellow was created by user renaud from openprocessing.org
    //I've made some modifications to it

    fill((1+sin(float(millis())/2000))*123);
    ellipse(mouseX, mouseY, 40, 40);

    pushMatrix();
    translate(mouseX, mouseY);
    rotate(rotateAmt*TWO_PI/360);
    fill((1+sin(float(millis())/2000))*123, 100, 255);
    ellipse(100, 100, 50, 50);
    fill((1+sin(float(millis())/2000))*123, 255, 100);
    ellipse(-100, -100, 50, 50);
    rotateAmt ++;
    popMatrix();


    // I made this part optional to help when running to code so that it isn't just running slow all the time.
    // This actually made the interation in the program more accessible and interesting since it doesn't run slow all the time like before.
    // Just press and hold down the mouse button to blur everything.
    // Its your choice now.
    if (mousePressed) {
      filter(DILATE);
      filter(BLUR);    //This is the cause of the performance issues.

      //I do not take ownership or credit for some of these lines of code.
      //These lines of code generate dynamic interactive smoke in the program.
    }
  }
}

