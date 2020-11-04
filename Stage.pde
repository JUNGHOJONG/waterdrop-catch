class Stage {

  private static final int CATCHEDCOUNT_MAX = 5;
  private static final int STAGE_MAX = 15;

  private int catchedCount = 0;
  private int stageNumber = 1;

  public void increaseCatchedCount() {
    catchedCount++;
    if (isPossibleUpStage()) {
      catchedCount = 0;
      stageNumber++;
    }
    if (isNeededResetStage()) {
      stageNumber = 1;
    }
  }

  public boolean isPossibleUpStage() {
    return catchedCount == CATCHEDCOUNT_MAX;
  }

  public boolean isNeededResetStage() {
    return stageNumber == STAGE_MAX;
  }

}
