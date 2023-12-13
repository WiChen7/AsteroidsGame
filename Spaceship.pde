class Spaceship extends Floater  
{   
    //your code here
      public Spaceship() {
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;   
    yCorners[0] = -8;   
    xCorners[1] = -4;   
    yCorners[1] = 0;   
    xCorners[2] = -8;   
    yCorners[2] = 8;
    xCorners[3] = 16;     
    yCorners[3] = 0;
      
      myColor = color(255);   
      myCenterX = 300;
      myCenterY = 300;
     myPointDirection = 0;
  }

  public void hyperspace(){
    myCenterX = (int) (Math.random()*600)+1;
    myCenterY = (int) (Math.random()*600)+1;
    myXspeed = 0;
    myYspeed = 0;
      myPointDirection = (int) (Math.random()*360)+1;
  }

  public float getPointDirection(){
    return (float) myPointDirection;
  }  

  public float getX(){
    return (float) myCenterX;
  }

  public float getY(){
    return (float) myCenterY;
  }
}
