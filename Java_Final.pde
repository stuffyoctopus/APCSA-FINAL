float startX = random(100, 500);
float startY = random(100, 500);
int targetSize = 35;
int red = 255;
int blue = 255;
int green = 255;
String mode = "mainMenu";
String modeTemp = "";
int count = 0;
int misses = 0;
int highScore = 0;
int tempHighscore = 0;
//float textWidth = 271.89972;
//float startLeft = 164.05014;
int hoverWhite = 255;
int hoverWhiteQuit = 255;
int secondsRemaining;
int startSeconds;
int seconds;
int tempSeconds;
String secondsMode="off";


void setup() {
  size(600, 600);
  rectMode(CENTER);
}
void draw() {
  //Background color
  background(100, 100, 100);


  ///////////////////////////////////////////////////////MAIN MENU////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (mode.equals("mainMenu")) {
    textAlign(CENTER);
    textSize(100);
    count = 0;
    misses = 0;

    //If your mouse hovers over the start button, darken the color of the button(white -> gray)
    if (mouseX > 300-(textWidth("START")+10)/2 && mouseX <300+(textWidth("START")+10)/2 && mouseY < 315 && mouseY > 215) {
      hoverWhite=200;
    } else {
      hoverWhite=255;
    }

    fill(hoverWhite, hoverWhite, hoverWhite);
    rect(300, 265, textWidth("START")+10, 100);


    //The text "START"
    fill(0, 0, 0);
    text("START", 300, 300);


    textSize(20);
    text("Current High Score: " + highScore, 300, 350);
  }
  ///////////////////////////////////////////////////////GAME///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //If you miss three times you go to game over page.
  else if (mode.equals("game")) {

    if(secondsMode.equals("off")){
seconds = ((millis()/1000)-startSeconds);
 secondsRemaining = 15-seconds;
}
    textAlign(CORNER);
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

    textAlign(RIGHT);
    textSize(30);
    text("Time Remaining: " + (secondsRemaining), 595, 30);

    //crosshair
    fill(0, 0, 0);
    rect(mouseX, mouseY, 40, 2);
    rect(mouseX, mouseY, 2, 40);
    if(secondsRemaining<=0){
      mode="gameOver";
    }
  }
  ///////////////////////////////////////////////////////PAUSE///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  else if (mode.equals("pause")) {
    background(100, 100, 100);
    textAlign(CENTER);
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

    //If your mouse hovers over the resume button, darken the color of the button(white -> gray)
    if (mouseX > 300-(textWidth("RESUME")+10)/2 && mouseX <300+(textWidth("RESUME")+10)/2 && mouseY < 314 && mouseY > 250) {
      hoverWhite=200;
    } else {
      hoverWhite=255;
    }

    //If your mouse hovers over the quit button, darken the color of the button(white -> gray)
    if (mouseX > 300-(textWidth("QUIT")+10)/2 && mouseX <300+(textWidth("QUIT")+10)/2 && mouseY < 414 && mouseY > 350) {
      hoverWhiteQuit=200;
    } else {
      hoverWhiteQuit=255;
    }


    //White background
    fill(hoverWhite, hoverWhite, hoverWhite);
    rect(300, 282, textWidth("RESUME")+10, 64);
    fill(0, 0, 0);
    textSize(100);

    //The text "RESUME"
    textSize(50);
    text("RESUME", 300, 300);

    //White background
    fill(hoverWhiteQuit, hoverWhiteQuit, hoverWhiteQuit);
    rect(300, 382, textWidth("QUIT")+10, 64);
    fill(0, 0, 0);
    textSize(100);

    //The text "QUIT"
    textSize(50);
    text("QUIT", 300, 400);
  } else if (mode.equals("gameOver")) {
    hoverWhite=255;
    hoverWhiteQuit=255;
    cursor();
    textAlign(CENTER);
    textSize(80);
    fill(180, 0, 0);
    text("GAME OVER", 300, 200);

    //High Score
    fill(255, 255, 255);
    textSize(20);
    text("High Score: " + highScore, 300, 240);

    //If your mouse hovers over the resume button, darken the color of the button(white -> gray)
    textSize(50);
    if (mouseX > 300-(textWidth("PLAY AGAIN")+10)/2 && mouseX <300+(textWidth("PLAY AGAIN")+10)/2 && mouseY < 344 && mouseY > 280) {
      hoverWhite=200;
    } else {
      hoverWhite=255;
    }

    //Play again background
    textSize(50);
    fill(hoverWhite, hoverWhite, hoverWhite);
    rect(300, 312, textWidth("PLAY AGAIN")+10, 64);
    //Play again background
    fill(0, 0, 0);
    text("PLAY AGAIN", 300, 330);



    //If your mouse hovers over the quit button, darken the color of the button(white -> gray)
    textSize(50);
    if (mouseX > 300-(textWidth("QUIT")+10)/2 && mouseX <300+(textWidth("QUIT")+10)/2 && mouseY < 434 && mouseY > 370) {
      hoverWhiteQuit=200;
    } else {
      hoverWhiteQuit=255;
    }


    //Quit background
    textSize(50);
    fill(hoverWhiteQuit, hoverWhiteQuit, hoverWhiteQuit);
    rect(300, 402, textWidth("QUIT")+10, 64);
    //Quit text
    fill(0, 0, 0);
    text("QUIT", 300, 420);
  }
}
