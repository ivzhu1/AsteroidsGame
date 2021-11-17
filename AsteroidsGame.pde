Spaceship bob = new Spaceship();
Star[] wow = new Star[250];
boolean[] keyDown = new boolean[5];
public void setup() 
{
  frameRate(120);
  size(700,700);
  background(25, 25, 28);
  for(int i = 0; i < wow.length; i++)
    wow[i] = new Star();
}
public void draw() 
{
  background(25, 25, 28);
  for(int i = 0; i < wow.length; i++)
    wow[i].show();
  if(keyDown[0] == true)
    bob.turn(-3);
  if(keyDown[1] == true)
    bob.turn(3);
  if(keyDown[2] == true)
    bob.accelerate(.05);
  if(keyDown[3] == true)
    bob.accelerate(-.05);
  bob.move();
  bob.show();
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
    bob.myCenterX = (Math.random()*700);
    bob.myCenterY = (Math.random()*700);
    bob.myXspeed = bob.myYspeed = 0;
  }
    
}
public void keyReleased(){
  if(key == 'a')
    keyDown[0] = false;
    else if(key == 'd')
    keyDown[1] = false;
  if(key == 'w')
    keyDown[2] = false;
    else if(key == 's')
    keyDown[3] = false;
}
