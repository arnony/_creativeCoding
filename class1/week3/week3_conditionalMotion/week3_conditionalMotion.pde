int x;
int dir; 

void setup() {
  size(1000, 800);
  x=0;
  dir = 1;
}

void draw() {
  background(200);
  circle(x, 200, 100);
  x=x+dir*10;
  if (x>1000) {
   dir = dir*(-1);
  }
  if (x<0) {
   dir = dir*(-1); 
  }
}
