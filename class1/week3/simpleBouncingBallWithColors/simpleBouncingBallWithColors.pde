//version 2 - only NOW the code chnages color of the ball on each bounce
int x;
int dir; 

void setup() {
  size(1000, 800);
  x=0;
  dir = 1;
  fill(255,0,0);
  
}

void draw() {
  //this is a comment. the computer ignores it
  background(200);
  circle(x, 200, 100);
  
  if (dir==1) {
   // each time - if dir is 1 - increase x - 
   x=x+10; 
  }
  if (dir==(-1)) {
   // each time - if dir is (-1) - decrease x - 
    x=x-10;
  }
  // instead of the 2 "IF" statements above - you can just write:
  // x=x+10*dir;    // this will have the same affect as asking and switching...
  
  if (x>1000) {
   // when the ball reaches the right side - change direction:
   dir = (-1);
   fill(120,120,0);
  
  }
  if (x<0) {
   // when the ball reaches the LEFT side - change direction:
   dir = 1; 
   fill(120,0,120);
  }
  println(dir);
}
