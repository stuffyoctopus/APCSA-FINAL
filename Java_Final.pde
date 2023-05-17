float startX = random(100, 500);
float startY = random(100, 500);
int targetSize = 35;
int red = 255;
int blue = 255;
int green = 255;
boolean start = true;
int count = 0;
float textWidth = 271.89972;
float startLeft = 164.05014;

void setup() {
  size(600, 600);
  rectMode(CENTER);
}
void draw() {
  //Background color
  background(100, 100, 100);

  //If the start button is pressed, then begin the game
  if (start) {
    
    //Box around the start
    rectMode(CORNER);
    
    //White background
    fill(255, 255, 255);
    rect(startLeft, 220, textWidth, 90);
    fill(0, 0, 0);
    
    //Top and Bottom
    rect(startLeft, 220, textWidth, 3);
    rect(startLeft, 310, textWidth+3, 3);
    
    //Left and Right
    rect(startLeft, 220, 3, 90);
    rect(startLeft+textWidth, 220, 3, 90);

    rectMode(CENTER);

    //The text "START"
    textSize(100);
    text("START", startLeft, 300);

    
  } else {
    noCursor();

    //circle
    fill(red, blue, green);
    strokeWeight(1);
    stroke(0, 0, 0);
    ellipse(startX, startY, targetSize, targetSize);


    //crosshair
    fill(0, 0, 0);
    rect(mouseX, mouseY, 40, 2);
    rect(mouseX, mouseY, 2, 40);
  }
}



void mousePressed() {
  float targetDistance = dist(startX, startY, mouseX, mouseY);
  print(count);


  //If you press the start button it begins the game by making the variable start false.
  if (mouseX > startLeft && mouseX < textWidth && mouseY < 310 && mouseY > 220) {
    start=false;
  }

  //If you click on the circle in moves positions
  if  (targetDistance < targetSize/2) {
    startX = random(100, 500);
    startY = random(100, 500);
    red = 255;
    blue = 255;
    green = 255;
    count++;
  } else {
    //Change the target to red if mouse is clicked outside the box (and then make a new circle .5 seconds later.)
    red = 255;
    blue = 0;
    green = 0;
    /*delay(1000);
     blue = 255;
     green = 255;
     startX = random(100, 500);
     startY = random(100, 500);*/
  }
}
