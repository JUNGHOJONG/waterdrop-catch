class Waterdrop {

  private static final float SPEED = 0;
  private static final float GRAVITY = 0.05;
  private static final float DIAMETER = 5;

  private float positionX = random(width);
  private float positionY = random(-20, -40);
  private float speed = SPEED;
  private float gravity = GRAVITY;
  private float diameter = DIAMETER;

  public void workGravity(int level) {
    speed += gravity * level;
  }

  public void move() {
    positionY += speed;
  }

  public void display() {
    fill(120, 150, 220);
    for (int i=0; i<5; i++) {
      ellipse(positionX, positionY + i * 5, diameter * (i + 1), diameter * (i + 1));
    }
  }

  public void caught() {
    positionX = random(width);
    positionY = -100;
    speed = 0;
    gravity = 0;
  }

  public boolean isReachableBottom() {
    return positionY > height + diameter / 2;
  }
  
}
