//your variable declarations here
Spaceship bob;
Star[] willy = new Star[150];
boolean wPressed = false;
boolean dPressed = false;
boolean aPressed = false;
ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>();

public void setup() {

  for (int i = 0; i < 14; i++) {
    asteroids.add(new Asteroid());
    asteroids.get(i).accelerate((int)(Math.random()*2)+1);
  }

    background(0);
    size(600, 600);
    bob = new Spaceship();
    for (int i = 0; i < willy.length; i++) {
      willy[i] = new Star();
    }
    //your code here
  }
  public void draw() 
  {
    //your code here
    fill(0);
    rect(0, 0, 600, 600);
    for (int i = 0; i < willy.length; i++) {
      willy[i].show();
    }

    for (int i = 0; i < asteroids.size(); i++) {
      asteroids.get(i).show();
      asteroids.get(i).move();
      float distance = dist(bob.getX(), bob.getY(), asteroids.get(i).getX(), asteroids.get(i).getY());
      if (distance <= 20)
        asteroids.remove(i);
    }

    bob.show();
    bob.move();
    if (wPressed == true) {
      bob.accelerate(0.05);
    }
    if (aPressed == true) {
      bob.turn(-2);
    }
    if (dPressed == true) {
      bob.turn(2);
    }
    if (wPressed == true && aPressed == true) {
      bob.accelerate(0.05);
      bob.turn(-3);
    }
    if (wPressed == true && dPressed == true) {
      bob.accelerate(0.05);
      bob.turn(3);
    }
  }

  public void keyPressed() {
    if (key == 'w') {
      wPressed = true;
    }
    if (key == 'd') {
      dPressed = true;
    }
    if (key == 'a') {
      aPressed = true;
    }
    if (key == 'e') {
      bob.hyperspace();
    }
  }
  public void keyReleased() {
    if (key == 'w') {
      wPressed = false;
    }
    if (key == 'd') {
      dPressed = false;
    }
    if (key == 'a') {
      aPressed = false;
    }
  }
