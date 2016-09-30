//your code here
NormalParticle tony = new NormalParticle();
NormalParticle[] starks = new NormalParticle[10];
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
	int myX, myY;
	//double dAngle, dSpeed;
	int myColor;

	NormalParticle()
	{
		myX = 250;
		myY = 250;
		//myColor= color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255);
		//spd = speed
		//ang = angle 
	} 
	void move()
	{
		//myX = myX + (double)(Math.cos(dAngle)* (dSpeed);
		//myY = myY + (double)(Math.sin(dAngle)* (dSpeed);
		myX = myX + (int)(Math.random()*5)-2;
		myY = myY + (int)(Math.random()*5)-2;
	}
	void show()
	{
		stroke (255);
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

