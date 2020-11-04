class Life {

  private static final int ORANGE_BAR = 7;
  private static final int RED_BAR = 3;
  
  private int amount = 10;
  private Score score = new Score(0);

  public void downAmount() {
    amount--;
    if (amount == 0) {                    
      endGame();
    }
  }

  public void endGame() {
    noLoop();
    score.display();
    System.out.println("lastScore: " + score.amount);
  }

  public void display() {
    noFill();
    stroke(255);
    strokeWeight(3);
    rect(width-350, height-50, 300, 30);

    noStroke();
    if (amount >= ORANGE_BAR) {
      fill(120, 220, 150);
    } else if (amount >= RED_BAR) {
      fill(220, 170, 120);
    } else {
      fill(220, 40, 20);
    }
    rect(width-350, height-50, amount * 30, 30);
  }

  public void reset() {
    amount = 10;
    score.amount = 0;
    stage.stageNumber = 1;
    stage.catchedCount = 0;
    drops = new ArrayList();
  }
}
