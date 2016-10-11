
NormalParticle[] tony = new NormalParticle[1000];
OddballParticle[] rice = new OddballParticle[10];
JumboParticle park = new JumboParticle();
Particle[] particles;

void setup()
{
  size (500,500);
  //array for normal particle
  for (int a = 0; a < tony.length; a ++)
  {
     tony[a] = new NormalParticle();  
     //matt[4] = new particle();
  }
  //array for odd particle
  for (int s = 0; s < rice.length; s++)
  {
    rice[s] = new OddballParticle();
  }
  particles = new Particle[100];
  for (int j = 0; j < particles.length; j++)
  {
  	particles[j] = new NormalParticle();
  }
  particles[2] = new OddballParticle();
  particles[4] = new JumboParticle();
  
}
void draw()
{
  background (0);
  for (int a = 0; a < tony.length; a++ )
  {
      tony[a].move();
      tony[a].show();
  }
  
   for (int s= 0; s < rice.length; s ++)
   {
      rice[s].move();
      rice[s].show();
   }
   
   park.move();
   park.show();

   for (int j = 0; j < particles.length; j++)
  {
  	particles[j].move();
  	particles[j].show();

  }
   
}
class NormalParticle implements Particle
{
  double myX, myY;
  double dAngle, dSpeed;

  NormalParticle()
  {
    myX = 250;
    myY = 250;
    dAngle =  PI *2 *Math.random();
    dSpeed = (Math.random() * 5) -2;
  } 
  public void move()
  {
    myX = myX + Math.cos(dAngle)*dSpeed;
    myY = myY + Math.sin(dAngle)* dSpeed;
  }
  public void show()
  {
    stroke ((int)(Math.random()*255), (int)(Math.random()*260), (int)(Math.random()*240));
    strokeWeight(3);
    point ((float)myX, (float)myY);
  }
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{

  double myX, myY;
  double dAngle, dSpeed;

  OddballParticle()
  {
    myX = 250;
    myY = 250;
    dAngle =  PI *2 *Math.random();
    dSpeed = (Math.random() * 3) -2;
  } 
  public void move()
  {
    myX = myX + Math.cos(dAngle)*dSpeed;
    myY = myY + Math.sin(dAngle)* dSpeed;
  }
	public void show()
  {
    noStroke();
    fill ((int)(Math.random()*255), 210, 260);
    ellipse((float)myX, (float)myY, 13, 4);
  }
  
}
class JumboParticle extends NormalParticle
{
  
  void show()
  {
    stroke ((int)(Math.random()*255));
    strokeWeight(50);
    point ((float)myX, (float)myY);
  }
}

void mousePressed()
{
  //array for norm
  for (int a = 0; a < tony.length; a ++)
  {
     tony[a] = new NormalParticle();  
  }
  //array for odd particle
  for (int s = 0; s < rice.length; s++)
  {
    rice[s] = new OddballParticle();
  }
  park = new JumboParticle();
}