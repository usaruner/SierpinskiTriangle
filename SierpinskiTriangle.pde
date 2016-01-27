float z = 100;
float x = 400;
float y = 400;
int s = 10;
public void setup()
{
background(0);
size(800,800);
}
public void draw()
{
background(0);
sierpinski(x,y,z);
 
}
public void mouseDragged()//optional
{
x = mouseX;
y = mouseY;

}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
     z+=15;
    } else if (keyCode == DOWN) {
     z-=15;
    } 
  }
  if(z <= 10){
  z= 10;
  }
}
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  z-=e*15;
  if(z <= 10){
  z= 10;
  }
  
}
public void sierpinski(float x, float y, float len) 
{
  float x1 = x;
  float y1 = y;
  float x2 = (x+abs(len));
  float y2 = y;
  float x3 = x+abs(len/2);
  float y3 = y-sqrt(2)*len/2;

 if (abs(len) >= 15){
    stroke(255,255,255);
    fill(0);
    triangle(x1,y1,x2,y2,x3,y3);
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-sqrt(2)*len/4,len/2);
    
  }else{
    triangle(x1,y1,x2,y2,x3,y3);
    
  }
   

}
