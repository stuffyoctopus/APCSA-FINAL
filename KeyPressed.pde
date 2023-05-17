void keyPressed() {
  if (keyCode==ESC) {
    //If you press ESC while in game, show the pause menu
    if (mode.equals("game")) {
      key=0;
      mode="pause";
      //If you press ESC while in pause menu, go back to the game
    } else if (mode.equals("pause")) {
      key=0;
      mode="game";
    }
  }
}
