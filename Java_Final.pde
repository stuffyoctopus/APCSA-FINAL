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
  println(millis()/1000);
  //If the start button is not pressed, show the main menu
  if (mode.equals("mainMenu")) {

    textSize(100);

    //If your mouse hovers over the start button, darken the color of the butto(white -> gray)
    if (mouseX > 300-(textWidth("START")+10)/2 && mouseX < 300+(textWidth("START")+10)/2 && mouseY < 315 && mouseY > 215) {
      hoverWhite=200;
    } else {
      hoverWhite=255;
    }

    textAlign(CENTER);
    fill(hoverWhite, hoverWhite, hoverWhite);
    rect(300, 265, textWidth("START")*1.05, 100);

    //The text "START"
    fill(0, 0, 0);
    text("START", 300, 300);

    textSize(20);
    text("Current High Score: " + highScore, 300, 350);

    //When the mode is game
  } else if (mode.equals("game")) {
    textAlign(LEFT);
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
    textAlign(CENTER);

    background(100, 100, 100);
    //bring back the cursor
    cursor();

    //make the text white
    fill(255, 255, 255);
    //current score
    textSize(30);
    text("Current Score: " + count, 300, 30);

    //high score
    textSize(30);
    text("High Score: " + highScore, 300, 60);

    //misses
    textSize(30);
    text("Misses: " + misses, 300, 90);
    
    
    textSize(50);
    //If your mouse hovers over the start button, darken the color of the button(white -> gray)
    if (mouseX > 300-(textWidth("RESUME")+10)/2 && mouseX < 300+(textWidth("RESUME")+10)/2 && mouseY < 210 && mouseY > 150) {
     hoverWhite=200;
     } else {
     hoverWhite=255;
     }


    fill(hoverWhite, hoverWhite, hoverWhite);
    rect(300, 180, textWidth("RESUME")*1.05, 60);

    //The text "RESUME"
    fill(0, 0, 0);
    text("RESUME", 300, 200);
  }
}
