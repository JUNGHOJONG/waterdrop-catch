class Timer {

  private int totalTime;
  private int presentTime;

  public Timer(int totalTime) {
    this.totalTime= totalTime;
  }

  public void starts() {
    presentTime= millis();
  }

  public boolean isfinished() {
    int passedTime= millis()- presentTime;
    return passedTime >= totalTime;
  }
}
