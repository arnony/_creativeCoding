//////////////////////////////////////////////////////////////////////////////////////////////////
// week 5, 2nd class 9.2.2022
// INTERACTIVITY 1 - mouse press event & mouse location
//////////////////////////////////////////////////////////////////////////////////////////////////




//TODO - paint with mouseX and mouseY or do stuff upon mousePressed event:


void setup() {
  size(1300, 800);
  background(140);
  colorMode(HSB, 255);
}

void draw() {
  // background(140);
  fill(mouseX/5, 255, 255);
  //circle (mouseX, mouseY, 80);

}

void mousePressed() {
  rect(mouseX, mouseY, 200, 200);
}
