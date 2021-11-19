Spaceship ship = new Spaceship();
Star[] stars = new Star[250];
boolean[] keyDown = new boolean[5];
public void setup() 
{
  frameRate(120);
  size(700,700);
  background(25, 25, 28);
  for(int i = 0; i < stars.length; i++)
    stars[i] = new Star();
}
public void draw() 
{
  background(25, 25, 28);
  for(int i = 0; i < stars.length; i++)
    stars[i].show();
  if(keyDown[0] == true)
    ship.turn(-3);
  if(keyDown[1] == true)
    ship.turn(3);
  if(keyDown[2] == true)
    ship.accelerate(.05);
  if(keyDown[3] == true)
    ship.accelerate(-.05);
  ship.move();
  ship.show();
}
public void keyPressed(){
  if(key == 'a')
    keyDown[0] = true;
    else if(key == 'd')
    keyDown[1] = true;
  if(key == 'w')
    keyDown[2] = true;
    else if(key == 's')
    keyDown[3] = true;
  if(key == 'h'){
    ship.setCenterX((Math.random()*700));
    ship.setCenterY((Math.random()*700));
    ship.setXspeed(0);
    ship.setYspeed(0);
  }  
}
public void keyReleased(){
  if(key == 'a')
    keyDown[0] = false;
    else if(key == 'd')
    keyDown[1] = false;
  if(key == 'w'){
    keyDown[2] = false;
  } else if(key == 's')
    keyDown[3] = false;
}
