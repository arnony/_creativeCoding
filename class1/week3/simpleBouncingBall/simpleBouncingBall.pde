int x;
int dir; 

void setup() {
  size(1000, 800);
  x=0;
  dir = 1;
}

void draw() {
  //this is a comment. the computer ignores it
  background(200);
  circle(x, 200, 100);
  
  if (dir==1) {
   // each time - if dir is 1 - increase x... (add 10)
   x=x+10; 
  } else {
   // each time - if dir is (-1) - decrease x... (minus 10) 
    x=x-10;
  }
  
  if (x>1000) {
   // when the ball reaches the right side - change direction:
   dir = (-1);
  }
  if (x<0) {
   // when the ball reaches the LEFT side - change direction:
   dir = 1; 
  }
  println(dir);
}
