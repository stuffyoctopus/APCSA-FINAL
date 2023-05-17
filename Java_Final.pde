float startX = random(100, 500);
float startY = random(100, 500);
int targetSize = 35;
int red = 255;
int blue = 255;
int green = 255;
String mode = "mainMenu";
int count = 0;
int highScore = 0;
float textWidth = 271.89972;
float startLeft = 164.05014;
int hoverWhite = 255;
int misses = 0;


void setup() {
  size(600, 600);
  rectMode(CENTER);
}
void draw() {
  //Background color
  background(100, 100, 100);



  //If the start button is not pressed, show the main menu
  if (mode.equals("mainMenu")) {

    //If your mouse hovers over the start button, darken the color of the butto(white -> gray)
    if (mouseX > startLeft && mouseX < textWidth + startLeft && mouseY < 310 && mouseY > 220) {
      hoverWhite=200;
    } else {
      hoverWhite=255;
    }
    //Box around the start
    rectMode(CORNER);

    //White background
    fill(hoverWhite, hoverWhite, hoverWhite);
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
    
    //When the mode is game
  } else if (mode.equals("game")) {
    //If the button is pressed and the mode is game, begin the game.
    noCursor();

    //circle
    fill(red, blue, green);
    strokeWeight(1);
    stroke(0, 0, 0);
    ellipse(startX, startY, targetSize, targetSize);

    //Score and high score color
    fill(255, 255, 255);

    //current score
    textSize(30);
    text("Current Score: " + count, 5, 30);

    //high score
    textSize(30);
    text("High Score: " + highScore, 5, 60);

    //misses
    textSize(30);
    text("Misses: " + misses, 5, 90);


    //crosshair
    fill(0, 0, 0);
    rect(mouseX, mouseY, 40, 2);
    rect(mouseX, mouseY, 2, 40);
    
  //If you press ESC, show the pause menu
  } else if (mode.equals("pause")) {
    background(100, 100, 100);  
    //bring back the cursor
    cursor();
    
    
  }
}
