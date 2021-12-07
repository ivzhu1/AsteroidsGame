class Asteroid extends Floater
{
  protected double rotationSpeed;
  public Asteroid(){
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*7)-16; 
    yCorners[0] = (int)(Math.random()*14)-7; 
    xCorners[1] = (int)(Math.random()*10)-8; 
    yCorners[1] = (int)(Math.random()*5)+15; 
    xCorners[2] = (int)(Math.random()*8)+11; 
    yCorners[2] = (int)(Math.random()*13)-5;
    xCorners[3] = (int)(Math.random()*9)+5; 
    yCorners[3] = (int)(Math.random()*8)-17; 
    xCorners[4] = (int)(Math.random()*10)-13; 
    yCorners[4] = (int)(Math.random()*8)-17;
    if(r == 0)
      myCenterX = Math.random()*300;
      else
      myCenterX = Math.random()*300+400;
    if(s == 0)
      myCenterY = Math.random()*300;
      else
      myCenterY = Math.random()*300+400;
    myColor = color(157, 166, 160);
    myXspeed = Math.random()*6-3;
    myYspeed = Math.random()*6-3;
    myPointDirection = Math.random()*360;
    rotationSpeed = myXspeed;
  }
  public void move(){ 
    turn(rotationSpeed);
    super.move();
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
