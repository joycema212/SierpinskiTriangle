int xlen;
int myX;
int myY;
public void setup()
{
  background(0);
  size(800, 800);
  xlen = 600;
  myX = 100;
  myY = 100;
}

void draw()
{
  background(0);
  sierpinski(myX, myY, xlen);
  println(xlen);
  
}
void mouseClicked()//optional
{
  if(xlen>=10){
  xlen/=2;
  } else{
    xlen*=2;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if (len<=10) {
    
    triangle(x, y, x+len, y, x+len/2, y+len);
  } else {
    fill(250,216,216);
    sierpinski(x, y, len/2);
    fill (255,106,106);
    sierpinski(x+len/2, y, len/2);
    fill   (0,171,102);
    sierpinski(x+len/4, y+len/2, len/2);
  }
}
