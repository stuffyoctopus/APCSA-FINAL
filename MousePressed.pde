void mousePressed() {
  float targetDistance = dist(startX, startY, mouseX, mouseY);

  //If you click on the circle in moves positions only if it is in game mode
  if (mode.equals("game")) {
    if  (targetDistance < targetSize/2) {
      startX = random(100, 500);
      startY = random(100, 500);
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
      //If the count is the new high score, make it the new high score.
      if (count>highScore) {
        highScore=count;
      }
      count = 0;
      println(count);
    }
  }
  //If you press the start button it begins the game by making the variable start false.
  if (mouseX > startLeft && mouseX < textWidth + startLeft && mouseY < 310 && mouseY > 220) {
    mode="game";
  }
}
