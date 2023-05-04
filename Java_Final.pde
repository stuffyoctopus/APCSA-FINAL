//var qq = random
float qx = 300;
float qy = 300;
int size = 35;
int red1 = 255;
int blue1 = 255;
int green1 = 255;

void setup() {
  size(600, 600);
      rectMode(CENTER);
      noCursor();

}
void draw() {


  //background
  background(100,100,100);
  //textSize(23)
  //fill('black')
  //text('Increase',0, 20)
  //text('Decrease',0, 40)
  //circle
  fill(red1,blue1,green1);
  strokeWeight(2);
  stroke(0,0,0);
  ellipse(qx, qy, size,size);
  //horizontal
  /*for (var x = 0; x <= width; x += 600) {
    fill(0, 255, 0);
    rectMode(CENTER);
    noStroke()
    rect(x, mouseY, 1200, 2);
  }*/
  rect(mouseX,mouseY,40,2);
    rect(mouseX,mouseY,2,40);

  //vertical
  /*for (var y = 0; y <= height; y += 600) {
    fill(0, 255, 0);
    rectMode(CENTER);
    noStroke()
    rect(mouseX, y, 2, 1200);
  }*/
}
void mousePressed() {
  float dmouse = dist(qx, qy, mouseX, mouseY);
    //print(dmouse);
  //if mouse is pressed inside the circle move it
  if  (dmouse < size/2) {
  qx = random(500);
  qy = random(500);
    red1 = 255;
    blue1 = 255;
    green1 = 255;
     } else {
    //fill red if mouse is clicked outside the box
  red1 = 255;
  blue1 = 0;
  green1 = 0;
}
//function mousePressed() {
  //if (mouseX > 0 && mouseX < 20 && mouseY > 0 && mouseY < 20)
//size = size+1;
//}

}
