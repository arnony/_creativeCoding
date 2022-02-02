//fixed only after class of 31/1/2022
//ball bounces-off of all walls and changes color upon bounce
//seems as the logic was too hard to follow at this stage. leaving it here as is for now, but going back to smaller steps in the next lessons.... 

int n;
int m;
int xDir;
int yDir;
int myBallRadius;
int stepSize;

void setup() {
  size(1000, 800);
  n=0;
  m=0;
  xDir = 1;
  yDir = 1;
  myBallRadius = 80;
  stepSize = 10;
  fill(255, 68, 42);
}

void draw() {
  background(200);
  circle(m, n, 2*myBallRadius);

  m = m+stepSize*xDir;
  n = n+stepSize*yDir;

  if (m>width-myBallRadius) {
    // when the ball reaches the right side - change x-direction to negative from now on
    xDir = (-1);
    fill(m, n, 120);
  } else if (m<0+myBallRadius) {
    // when the ball reaches the LEFT side - change x-direction:to positive from now on
    xDir = 1;
    fill(m, n, 0);
  }
  if (n>height-myBallRadius) {
    // when the ball reaches the "floor" - change y-direction to negative from now on
    yDir = (-1);
    fill(m, n, 255);
  } else if (n<0+myBallRadius) {
    // when the ball reaches the top - change y-direction to positive from now on.
    yDir = 1;
    fill(m, n, m+n);
  }
}
