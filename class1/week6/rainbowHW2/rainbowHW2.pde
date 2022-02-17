int sunY = -240;

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
  circle (-550, sunY, 130);

  //sea:
  fill(150, 255, 255);
  rect (-width/2, -40, width, 700);

  if (mousePressed) {
    int sunLocX = width/2-550; // ==> translate + actual location of the sun. see above
    int sunLocY = height/2-240; // ==> translate + actual location of the sun. see above
    int radius = 130/2; //see above - diameter of the sun is 130
    if (mouseX>sunLocX-radius && mouseX<sunLocX+radius && mouseY>sunLocY-radius && mouseY<sunLocY+radius) {
      //YES! inside the sun (inside its original location)
      sunY = sunY+2;
    }
  }
}
