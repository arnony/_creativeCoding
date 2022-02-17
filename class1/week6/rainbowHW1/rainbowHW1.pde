void setup() {
  size(1400, 900);
  background(255);
  colorMode(HSB, 255);
}


void draw() {
  translate(width/2, height/2);
  //sky:
  noStroke();
  fill(150, 100, 255);
  rect (-width/2, -height, width, height);

  //rainbow:
  stroke(0);
  for (int i=255; i>10; i=i-25) {
    fill (i, 255, 255);
    circle (0, 0, i+300);
  }

  //sky circle at the center:
  fill(150, 100, 255);
  noStroke();
  circle(0, 0, 303);

  
   //sun:
  fill(30, 255, 255);
  circle (-550, -240, 130);
  
   //sea:
  fill(150, 255, 255);
  rect (-width/2, -40, width, 700);
 
}
