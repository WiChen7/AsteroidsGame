class Bullet extends Floater {
  public Bullet(Spaceship bob) {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    //myXspeed = bob.getXspeed();
    //myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    accelerate(1);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public void show() {
    noStroke();
    fill(200,200,200);
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
  }
    public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
