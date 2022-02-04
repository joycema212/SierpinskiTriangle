int xlen;
int myX;
int myY;
public void setup()
{
size(800, 800);
 xlen = 600;
 myX = 100;
 myY = 100;
}

public void draw()
{
sierpinski(myX, myY, xlen);
}
public void mouseClicked()//optional
{
xlen/
}
public void sierpinski(int x, int y, int len) 
{
if (len<=15){
triangle(x,y, x+len, y, x+len/2, y+len);
} else {
sierpinski(x, y, len/2);
sierpinski(x+len/2, y, len/2);
sierpinski(x+len/4, y+len/2, len/2);
}
}
