Stars[] nightSky = new Stars[200];
ArrayList <Asteroid> space;
Spaceship one = new Spaceship();
//Bullet grey = new Bullet(one);
ArrayList <Bullet> kill;
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
  kill = new ArrayList <Bullet>();
  
}
public void draw() 
{
  background(30,17,152);
  //grey.show();
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
    if(dist(one.getX(),one.getY(), space.get(k).getX(),space.get(k).getY()) < 20)
    {space.remove(k);}
  }
  for(int i=0; i<kill.size(); i++)
  {
    if(kill.get(i).getX() == 400){kill.remove(i);}
    else if(kill.get(i).getX() == 0){kill.remove(i);}
    else if(kill.get(i).getY() == 0){kill.remove(i);}
    else if(kill.get(i).getY() == 400){kill.remove(i);}
  for (int l=0; l<kill.size(); l++)
  {
    kill.get(l).show();
    kill.get(l).move();
  }
  for(int l=0; l<kill.size(); l++)
    for(int k=0; k<space.size(); k++)
    if(dist(kill.get(l).getX(),kill.get(l).getY(),space.get(k).getX(),space.get(k).getY()) < 10)
    {space.remove(k);}
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
 if (key == 'f')
 {
   kill.add(new Bullet(one));
 }
}