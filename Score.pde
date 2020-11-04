class Score {

  private int amount = 0;

  public Score(int amount) {
    this.amount = amount;
  }

  public void getScore(int level) {
    this.amount += level * 10;
  }

  public void display() {
    fill(255, 200);
    text("totalscores : " + amount, width/2, height/2);
  }
  
}
