//your variable declarations here
Stars[] nightSky = new Stars[200];
//Asteroid[] space = new Asteroid[20];
ArrayList <Asteroid> space;
Spaceship one = new Spaceship();
//Asteroid bob = new Asteroid();
public void setup() 
{
  //your code here
  size(400,400);
  for(int i=0; i<nightSky.length; i++)
  {
    nightSky[i] = new Stars();
  }
  space = new ArrayList <Asteroid>();
   for(int j=0; j<20; j++)
  {
    space.add(new Asteroid());
  }
}
public void draw() 
{
  background(30,17,152);
  one.show();
  one.move();
  for (int i = 0; i< nightSky.length; i++)
  {
    nightSky[i].show();
  }
  for (int j = 0; j< space.size(); j++)
  {
    (space.get(j)).show();
    (space.get(j)).move();
  }
  for(int k=0; k<space.size(); k++)
  {
    if(dist((one.getX()), (one.getY()), ((space.get(k)).getX()), ((space.get(k)).getX())) < 5)
    space.remove(k);
  }
}
public void keyPressed()
{
  if (key == 'w') {one.accelerate(0.5);}
  if (key == 'd') {one.turn((int)(2*PI));} //right
  if (key == 'a') {one.turn((int)(-2*PI));} //left
  if (key == 's') 
  {
    one.setDirectionX(0); 
    one.setDirectionY(0);
    one.setX((int)(Math.random()*400));
    one.setY((int)(Math.random()*400));
    one.setPointDirection((int)(Math.random()*400));
  }
}