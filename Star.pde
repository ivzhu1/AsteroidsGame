class Star //note that this class does NOT extend Floater
{
  private int myColor;
  private double myX, myY;
  public Star(){
    myColor = color((int)(Math.random()*50+194), (int)(Math.random()*70+175), (int)(Math.random()*60+190));
    myX = Math.random()*700;
    myY = Math.random()*700;
  }
  public void show(){
    fill(myColor);
    noStroke();
    translate((float)myX,(float)myY);
    beginShape();
    vertex(0,3);
    vertex(1,1);
    vertex(3,0);
    vertex(1,-1);
    vertex(0,-3);
    vertex(-1,-1);
    vertex(-3,0);
    vertex(-1,1);
    endShape(CLOSE);
    translate(-1*(float)myX, -1*(float)myY);
  }
}
