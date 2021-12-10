class Bullet extends Floater{
  public Bullet(Spaceship ship){
    myCenterX = ship.getCenterX();
    myCenterY = ship.getCenterY();
    myPointDirection = ship.getPointDirection();
    accelerate(5);
  }
  public void show(){
    fill(171, 19, 19);
    noStroke();
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;    
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
