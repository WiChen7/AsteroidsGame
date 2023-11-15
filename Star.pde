class Star //note that this class does NOT extend Floater
{
  //your code here
   private int myX, myY;

  public Star(){
    myX = (int) (Math.random()*600)+1;
    myY = (int) (Math.random()*600)+1;
  }

  public void show(){
    fill(255);
    ellipse(myX, myY, 3,3);
  }
}
