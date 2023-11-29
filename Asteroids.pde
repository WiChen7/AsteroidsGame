class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
   corners = 6;
   xCorners = new int[] {-7, 6, 17, 7, -7, -16};     
   yCorners = new int[] {-14, -13, 0, 13, 14, 0};     
   myColor = color((int)(Math.random()*95)+70); 
   myCenterX = (int)(Math.random()*400);
   myCenterY = (int)(Math.random()*400);
   myXspeed = 0;
   myYspeed = 0;
   myPointDirection = (int)(Math.random()*360);
   rotSpeed = (Math.random()*5)-2;
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
   public void setX(int x){
   myCenterX = x;
 }
   public int getX(){
    return (int)myCenterX;
   }
 
 public void setY(int y){
   myCenterY = y;
 }
    public int getY(){
     return (int)myCenterY;
   }
}
