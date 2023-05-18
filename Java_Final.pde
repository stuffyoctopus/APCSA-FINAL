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

    
    //If your mouse hovers over the start button, darken the color of the butto(white -> gray)
    if (mouseX > startLeft && mouseX < textWidth + startLeft && mouseY < 310 && mouseY > 220) {
      hoverWhite=200;
    } else {
      hoverWhite=255;
    }

    textSize(100);
    fill(hoverWhite, hoverWhite, hoverWhite);
    rect(textWidth("START")/2+startLeft, 265, textWidth("START")+5, 100);

    //The text "START"
    fill(0, 0, 0);
    text("START", 300-textWidth("START")/2, 300);

   println(textAscent() + textDescent());

    textSize(20);
    text("Current High Score: " + highScore, 300-(textWidth("Current High Score: " + highScore)/2), 350);

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

    //make the text white
    fill(255, 255, 255);
    //current score
    textSize(30);
    text("Current Score: " + count, 300-(textWidth("Current Score: 2")/2), 30);

    //high score
    textSize(30);
    text("High Score: " + highScore, 300-(textWidth("High Score: 2")/2), 60);

    //misses
    textSize(30);
    text("Misses: " + misses, 300-(textWidth("Misses: 2")/2), 90);

    //If your mouse hovers over the start button, darken the color of the butto(white -> gray)
    if (mouseX > startLeft && mouseX < textWidth + startLeft && mouseY < 310 && mouseY > 220) {
      hoverWhite=200;
    } else {
      hoverWhite=255;
    }





    //Box around Resume
    rectMode(CORNER);

    //White background
    fill(hoverWhite, hoverWhite, hoverWhite);
    rect(startLeft, 220, textWidth, 64);
    fill(0, 0, 0);
    textSize(100);



    rectMode(CENTER);

    //The text "START"
    textSize(50);
    text("RESUME", 300-textWidth("RESUME")/2, 300);
  }
}
