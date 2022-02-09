//////////////////////////////////////////////////////////////////////////////////////////////////
// week 5, 2nd class 9.2.2022
// INTERACTIVITY 2 - function with arguments... myStamp(40,100)...
//////////////////////////////////////////////////////////////////////////////////////////////////




//TODO - create your own "myStamp"... and use it on mousePressed event

void setup() {
  size(1300, 800);
  background(140);
  colorMode(HSB, 255);
}

void draw() {
  fill(mouseX/5, 255, 255);

}

void mousePressed() {
  myStamp(mouseX, mouseY);
}



void myStamp(int x, int y){
  circle (x,y,90);
  circle (x+10,y,50);
 }
