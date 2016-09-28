//your code here
NormalParticle tony = new NormalParticle();
void setup()
{
	size (500, 500);
}
void draw()
{
	background(0);
	tony.move();
	tony.show();

}
class NormalParticle
{
	int myX, myY;
	double dAngle, dSpeed;
	int myColor;

	/* NormalParticle()
	{
		myX = 250;
		myY = 250;
		myColor= color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255);
		//spd = speed
		//ang = angle 
	} */
	void move()
	{
		myX = myX + (int)(Math.cos(dAngle)* (dSpeed);
		myY = myY + (int)(Math.sin(dAngle)* (dSpeed)
	}
	void show()
	{
		stroke (myColor);
		strokeWeight(10);
		point (myX, myY);
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

