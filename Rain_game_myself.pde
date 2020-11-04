private Catcher catchers;
private ArrayList<Waterdrop> drops;
private Timer timer;
private Life life;
private Stage stage;
private PFont myFont1;
private PFont myFont2;

void setup() {
  size(400, 400);
  background(0);
  textAlign(CENTER, CENTER);
  myFont1= createFont("ENOCRA", 64);
  myFont2= createFont("ENOCRA", 64);

  textFont(myFont1, 32);
  textFont(myFont2, 36);
  textLeading(40);

  drops = new ArrayList();
  catchers = new Catcher(30);
  timer = new Timer(2000);
  life = new Life();
  stage = new Stage();
  timer.starts();
}

void draw() {
  background(0);
  catchers.movePosition();
  catchers.display();
  life.display();
  makeDroppingWater();
  
  for (Waterdrop drop : drops) {
    drop.workGravity(stage.stageNumber);
    drop.move();
    drop.display();
    if (catchers.intersect(drop)) {
      drop.caught();
      stage.increaseCatchedCount();
      life.score.getScore(stage.stageNumber);
    }
    if (drop.isReachableBottom()) {
      drop.caught();
      life.downAmount();
    }
  }
}

public void makeDroppingWater() {
  if (timer.isfinished()) {
    drops.add(new Waterdrop());
    timer.starts();
  }
}

void mousePressed() {
  loop();
  life.reset();
}
