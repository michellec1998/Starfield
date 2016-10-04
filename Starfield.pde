//your code here
NormalParticle tony = new NormalParticle();
NormalParticle[] starks = new NormalParticle[50];

void setup()
{
	size (500, 500);

	for (int a = 0; a < starks.length; a ++)
	{
		starks[a] = new NormalParticle();
	} 
}
void draw()
{
	background(0);
	tony.move();
	tony.show();

	for (int a = 0; a < starks.length; a ++)
	{
		starks[a].move();
		starks[a].show();
	} 
  
}
class NormalParticle
{
	float myX, myY;
	float dAngle, dSpeed;
	int myColor;

	NormalParticle()
	{
		myX = 250;
		myY = 250;

	} 
	void move()
	{
		//myX = myX + (double)(Math.cos(dAngle)* (dSpeed);
		//myY = myY + (double)(Math.sin(dAngle)* (dSpeed);
		myX = myX + (int)(Math.cos(dAngle)*(int)(Math.random()*30)-10);
		myY = myY + (int)(Math.sin(dSpeed)*(int)(Math.random()*20)-5);
	}
	void show()
	{
		stroke ( (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255) ) ;
		strokeWeight(10);
		point ((float)myX, (float)myY);
	}

  void mousePressed()
  {
    myX = mouseX;
    myY = mouseY;
    redraw();
  }
  
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}