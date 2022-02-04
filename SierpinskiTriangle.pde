int xlen;
int myX;
int myY;
public void setup()
{
size(900, 900);
 xlen =302;
 myX = 300;
 myY = 300;
}

public void draw()
{
sierpinski(myX, myY, xlen);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
if (len==200){
triangle(x,y, x+len, y, x+len/2, y+len);
} else {
triangle (x,y, x+len/2, y, x+len/4, y+len/2);
triangle (x+len/2,y, x+len, y, x+len/4 + len/2, y+len/2);
triangle (x+len/4,y+len/2, x+len/2+len/4, y+len/2, x+len/2, y+len);

}
}
