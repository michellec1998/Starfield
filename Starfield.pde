//your code here
NormalParticle tony = new NormalParticle();
NormalParticle[] starks = new NormalParticle[1000];
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
	double myX, myY;
	double dAngle, dSpeed;

	NormalParticle()
	{
		myX = 250;
		myY = 250;
		dAngle =  PI *2 *Math.random();
		dSpeed = (Math.random() * 5) -2;
	} 
	void move()
	{
		//myX = myX + (double)(Math.cos(dAngle)* (dSpeed);
		//myY = myY + (double)(Math.sin(dAngle)* (dSpeed);
		myX = myX + Math.cos(dAngle)*dSpeed;
		myY = myY + Math.sin(dAngle)* dSpeed;
	}
	void show()
	{
        stroke ((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		strokeWeight(5);
		point ((float)myX, (float)myY);
	}
}

interface Particle
{

	public void move();
	public void show();
}

/*class NormalParticle implements Particle
{
	public void move();
	public void show();
} */

class OddballParticle implements Particle//uses an interface
{
	OddballParticle()
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
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		strokeWeight(2);
		ellipse(myX, myY, 10, 10);
	}

}
class JumboParticle //uses inheritance
{
}
