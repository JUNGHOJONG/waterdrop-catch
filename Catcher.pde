class Catcher {

  private float positionX = 0;
  private float positionY = 0;
  private float diameter;
  private color catcherColor;

  public Catcher(float diameter) {
    this.diameter = diameter;
    this.catcherColor= color(255, 0, 0);
  }

  public void movePosition() {
    this.positionX = mouseX;
    this.positionY = mouseY;
  }

  public void display() {
    noStroke();
    fill(catcherColor);
    ellipse(positionX, positionY, diameter, diameter);
  }

  public boolean intersect(Waterdrop b) {
    float distanceForCatcherAnddrippingWaterDrop = dist(positionX, positionY, b.positionX, b.positionY);
    return distanceForCatcherAnddrippingWaterDrop < diameter + b.diameter;
  }
}
