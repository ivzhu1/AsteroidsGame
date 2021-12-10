class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = -4;
    yCorners[1] = -4;
    xCorners[2] = 16;
    yCorners[2] = 0;
    xCorners[3] = -4;
    yCorners[3] = 4;
    xCorners[4] = -8;
    yCorners[4] = 8;
    yCorners[5] = -2;
    yCorners[5] = 0;
    myCenterX = 350;
    myCenterY = 350;
    myColor = color(196, 208, 255);
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  }
  public void setCenterX(double n){
    myCenterX = n;
  }
  public void setCenterY(double n){
    myCenterY = n;
  }
  public void setXspeed(float n){
    myXspeed = n;
  }
  public void setYspeed(float n){
    myYspeed = n;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}
