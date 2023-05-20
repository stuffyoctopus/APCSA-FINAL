void mousePressed() {
  float targetDistance = dist(startX, startY, mouseX, mouseY);


  //If the mode is in mainMenu


  //If you click on the circle in moves positions only if it is in game mode
  if (mode.equals("game")) {
    if  (targetDistance < targetSize/2) {
      startX = random(100, 500);
      startY = random(120, 500);
      red = 255;
      blue = 255;
      green = 255;
      count++;
      //If the count is the new high score, make it the new high score.
      if (count>highScore) {
        highScore=count;
      }
    } else {
      //Change the target to red if mouse is clicked outside the box and reset te score
      red = 255;
      blue = 0;
      green = 0;
      misses++;
      //If the misses is 3 or more, send to game over screen
      if (misses>=3) {
        mode="gameOver";
      }
      //If the count is the new high score, make it the new high score.
      if (count>highScore) {
        tempHighscore=highScore;
        highScore=count;
      }
      count = 0;
      println(count);
    }
  }
  if (mode.equals("mainMenu")) {
    //If you press the start button it begins the game by making the variable start false.
    textSize(100);
    if (mouseX > 300-(textWidth("START")+10)/2 && mouseX <300+(textWidth("START")+10)/2 && mouseY < 315 && mouseY > 215) {
      mode="game";
    }
  }

  if (mode.equals("pause")) {
    if (mouseX > 300-(textWidth("RESUME")+10)/2 && mouseX <300+(textWidth("RESUME")+10)/2 && mouseY < 314 && mouseY > 250) {
      mode="game";
    }
    if (mouseX > 300-(textWidth("QUIT")+10)/2 && mouseX <300+(textWidth("QUIT")+10)/2 && mouseY < 414 && mouseY > 350) {
      mode="mainMenu";
    }
  }

  if (mode.equals("gameOver")) {
    if (mouseX > 300-(textWidth("PLAY AGAIN")+10)/2 && mouseX <300+(textWidth("PLAY AGAIN")+10)/2 && mouseY < 344 && mouseY > 280) {
      mode="game";
    }
    if (mouseX > 300-(textWidth("QUIT")+10)/2 && mouseX <300+(textWidth("QUIT")+10)/2 && mouseY < 434 && mouseY > 370) {
      mode="mainMenu";
    }
  }
}
