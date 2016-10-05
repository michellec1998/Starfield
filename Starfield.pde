//your code here
//NormalParticle tony = new NormalParticle();
/*interface Particle
{
 	public void move();
 	public void show();
}
class NormalParticle implements Particle
{
	public void move()
 	{}
	public void show()
 	{}
}
class oddballParticle
{
  	public void move()
  	{}
  	public void show()
  	{}
} */

Particle[] starks = new Particle[100];
void setup()
{
	size (500, 500);

	for (int a = 0; a < 10; a ++)
	{
		Particle[a] = new NormalParticle();
		Particle[5] = new OddballParticle();
	}

	for (int a = 0; a < 7; a ++)
	{
		starks[a].move();
		starks[a].show();
	}
}
	
void draw()
{
	background(0);
//	tony.move();
//	tony.show();

	for (int a = 0; a < 10; a ++)
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
	public void move()
	{
		//myX = myX + (double)(Math.cos(dAngle)* (dSpeed);
		//myY = myY + (double)(Math.sin(dAngle)* (dSpeed);
		myX = myX + Math.cos(dAngle)*dSpeed;
		myY = myY + Math.sin(dAngle)* dSpeed;
	}
	public void show()
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
	double myX, myY, dSpeed, dAngle;

	OddballParticle()
	{
		myX = 250;
		myY = 250;
		dAngle =  PI *2 *Math.random();
		dSpeed = (Math.random() * 5) -2;
	}
	public void move()
	{
		//myX = myX + Math.cos(dAngle)*dSpeed;
		//myY = myY + Math.sin(dAngle)* dSpeed;
	} 
	public void show()
	{
		//fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		stroke(255);
		strokeWeight(25);
		point ((float)myX, (float)myY);

		//ellipse(myX, myY, 10, 10);
	}

}
class JumboParticle //uses inheritance
{
}