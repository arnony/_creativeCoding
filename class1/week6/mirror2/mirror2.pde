
void setup() {
  size(1200, 800);
  colorMode(HSB, 255);
  background(255);
  line (50, 400, 1150, 400);//mirror 1
  line (600,50,600,750); //mirror 2
  noStroke();
}


void draw() {
}



void mouseDragged() {
  fill(30, 255, 255);
  circle(mouseX, mouseY, 4);
  mirror1();
  mirror2();
}

void mirror1() {
  // line (50,400,1150,400);
  fill(80, 255, 255);
  circle(mouseX, 400+400-mouseY, 4);
}


void mirror2() {
  // line (600,50,600,750);
  fill(180, 255, 255);
  circle(600+600-mouseX, mouseY, 4);
}
