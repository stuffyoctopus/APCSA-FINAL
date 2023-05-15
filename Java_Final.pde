float startX = 300;
float startY = 300;
int targetSize = 35;
int red1 = 255;
int blue1 = 255;
int green1 = 255;
boolean start = true;



void setup() {
  size(600, 600);
  rectMode(CENTER);
  noCursor();
  
}
void draw() {
  //background color
  background(100, 100, 100);

//if the start button is pressed, then begin the game
if (start){
  rect(250, 220, 100,1);
  textSize(100);
 text("start", startX-100,startY);
 fill(0,0,0);
  rect(mouseX, mouseY, 40, 2);
  rect(mouseX, mouseY, 2, 40);
}else{


  //circle
  fill(red1, blue1, green1);
  strokeWeight(1);
  stroke(0, 0, 0);
  ellipse(startX, startY, targetSize, targetSize);


//crosshair
fill(0,0,0);
  rect(mouseX, mouseY, 40, 2);
  rect(mouseX, mouseY, 2, 40);
}
}



void mousePressed() {
  float targetDistance = dist(startX, startY, mouseX, mouseY);
  //float testDisance = dis(
if(mouseX > 150 && mouseX < 450 && mouseY < 400 && mouseY > 200){ 
start=false;
}

  //if mouse is pressed inside the circle move it
  if  (targetDistance < targetSize/2) {
    startX = random(500);
    startY = random(500);
    red1 = 255;
    blue1 = 255;
    green1 = 255;
  } else {
    //change the target to red if mouse is clicked outside the box
    red1 = 255;
    blue1 = 0;
    green1 = 0;
  }






}
