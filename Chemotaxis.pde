Bacteria [] colony;
void setup()
{
  size(500, 500);
  frameRate(50);
  colony=new Bacteria[30];
  for (int i=0; i<colony.length; i++)
    colony[i] = new Bacteria(400,150);
}
void draw()
{
  background(150,200,250);
  for (int i=0; i<colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
}
class Bacteria
{
  int myX, myY, myColor;
  Bacteria(int x, int y)
  {
    myX=x;
    myY=y;
    myColor=(int)(Math.random()*255)-50;
  }
  void move()
  {
    myX=myX+(int)(Math.random()*11)-6;
    myY=myY+(int)(Math.random()*13)-6;
  }
  void show()
  {
    noStroke();
    fill(200,100,0);
    stroke(5);
    triangle(125+myX, 100+myY, 175+myX, 65+myY, 175+myX, 135+myY);
    ellipse(100+myX, 100+myY, 100, 70);
    arc(100+myX,110+myY,10,30,0,PI);
    fill(0);
    noStroke();
    ellipse(100-20+myX, 100-10+myY, 13, 13);
    fill(200,100,0);
  }
}  
