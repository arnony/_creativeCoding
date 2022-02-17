
void setup() {
  size(1200, 800);
  colorMode(HSB, 255);
  background(255);
  //touched[3] = true;
  line (50, 400, 1150, 400);//mirror 1
  noStroke();
}


void draw() {
}



void mouseDragged() {
  fill(30, 255, 255);
  circle(mouseX, mouseY, 4);
  mirror1();
}

void mirror1() {
  // line (50,400,1150,400);
  fill(80, 255, 255);
  circle(mouseX, 400+400-mouseY, 4);
}
