Spaceship ship = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
Star[] stars = new Star[250];
boolean[] keyDown = new boolean[5];
float c;
float health = 100;
boolean endGame = false;
int random,random2,r,s;
double time = 0;
public void setup() 
{
  frameRate(120);
  size(700, 700);
  for (int i = 0; i < stars.length; i++)
    stars[i] = new Star();
  for (int i = 0; i < 11; i++)
    rocks.add(new Asteroid());
}
public void draw() 
{
  c = 0;
  noFill();
  noStroke();
  for(int d = 511; d > 0; d -= 30){
    fill(c, c, c);
    ellipse(350, 350, d*2, d*2);
    c+=1.5;
  }
  for (int i = 0; i < stars.length; i++)
    stars[i].show();
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).move();
    rocks.get(i).show();
    if(dist((float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY(), (float)ship.getCenterX(), (float)ship.getCenterY()) < 20){
      rocks.remove(rocks.get(i));
      health -= 10;
      if(health <= 0)
        endGame = true;
    }
  }
  if (keyDown[0] == true)
    ship.turn(-3.5);
  if (keyDown[1] == true)
    ship.turn(3.5);
  if (keyDown[2] == true)
    ship.accelerate(.05);
  if (keyDown[3] == true)
    ship.accelerate(-.05);
  if (keyDown[4] == true)
    shots.add(new Bullet(ship));
  ship.move();
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
    for(int j = 0; j < rocks.size(); j++){
      if(dist((float)rocks.get(j).getCenterX(), (float)rocks.get(j).getCenterY(), (float)shots.get(i).getCenterX(), (float)shots.get(i).getCenterY()) < 20){
        rocks.remove(rocks.get(j));
        health += 0.1;
      }
    }
  }
  ship.show();
  textSize(15);
  fill(255);
  text("Health: " + (int)health, 600, 30);
  text("Number of Asteroids: " + rocks.size(), 500, 60);
  text("Time: " + (int)time, 620,90);
  if(endGame == true){
    fill(0,0,0);
    rect(0,0,700,700);
    textSize(25);
    fill(255);
    text("You died", 305,320);
    textSize(15);
    text("Click 'Enter' to Restart", 275, 345);
    text("Time Survived: " + (int)time + " Second(s)", 255,650);
    ship.setXspeed(0);
    ship.setYspeed(0);
    ship.setCenterX(350);
    ship.setCenterY(350);
    for(int i = rocks.size()-1; i>=0; i--)
      rocks.remove(i);
    for(int i = shots.size()-1; i>=0; i--)
      shots.remove(i);
  }
  if(endGame == false){
    time += 0.008333333333;
    random = (int)(Math.random()*1000);
    random2 = (int)(Math.random()*600);
    if(time >= 60){
      if(random2 <= 5){
        rocks.add(new Asteroid());
        rocks.add(new Asteroid());
        rocks.add(new Asteroid());
        if(rocks.size()>10){
          rocks.add(new Asteroid());
          rocks.add(new Asteroid());
          rocks.add(new Asteroid());
        }
      }
    } else if(time >= 30){
      if(random2 <= 2){
        rocks.add(new Asteroid());
        rocks.add(new Asteroid());
      }
    } else {
      if(random == 5)
        rocks.add(new Asteroid());
    }
    if(rocks.size() <= 5)
      for(int i = 0; i < (int)(Math.random()*4)+3; i++)
        rocks.add(new Asteroid());
  }
  r = (int)(Math.random()*2);
  s = (int)(Math.random()*2);
}
public void keyPressed() {
  if (key == 'a')
    keyDown[0] = true;
  else if (key == 'd')
    keyDown[1] = true;
  if (key == 'w')
    keyDown[2] = true;
  else if (key == 's')
    keyDown[3] = true;
  if (key == ' ')
    keyDown[4] = true;
  if (key == 'h') {
    ship.setCenterX((Math.random()*700));
    ship.setCenterY((Math.random()*700));
    ship.setXspeed(0);
    ship.setYspeed(0);
  }
  if(key == '-')
    endGame = true;
  if(key == ENTER && endGame == true){
    for(int i = 0; i < 11; i++)
      rocks.add(new Asteroid()); 
    health = 100;
    time = 0;
    endGame = false;  
  }
}
public void keyReleased() {
  if (key == 'a')
    keyDown[0] = false;
  else if (key == 'd')
    keyDown[1] = false;
  if (key == 'w') {
    keyDown[2] = false;
  } else if (key == 's')
    keyDown[3] = false;
  if (key == ' ')
    keyDown[4] = false;
}
