int x;


void setup() {
  size(800, 600);
  x=60;
}

void draw() {
  // this is ignored. useful for me only. it is called "comment"... he-a-ra.
  background(200);
  circle(100+x, 100, 40);
  x=x+1;
}
