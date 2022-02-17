import processing.sound.*;
int sunY = -240;
int shaking = -1;
SoundFile sunSound;
SoundFile[] files = new SoundFile[10];

void setup() {
  size(1400, 900);
  background(255);
  colorMode(HSB, 255);
  sunSound = new SoundFile(this, "water_blup2.mp3");
  for (int i=0; i<10; i=i+1) {
    files[i] = new SoundFile(this, "Recording_"+i+".wav");
  }
}

void draw() {
  translate(width/2, height/2);
  noStroke();
  fill(150, 100, 255);
  rect (-width/2, -height, width, height);
  stroke(0);
  for (int j=9; j>=0; j=j-1) {
    fill (j*28, 255, 255);
    if (shaking ==j) {
      circle (0, 0, 25*j+300+ random(1, 5));
    } else {
      strokeWeight(1);
      circle (0, 0, 25*j+300);
    }
  }
  fill(150, 100, 255);
  noStroke();
  circle(0, 0, 303);
  fill(30, 255, 255);
  circle (-550, sunY, 130);
  fill(150, 255, 255);
  rect (-width/2, -40, width, 700);
  if (mousePressed) {
    int sunLocX = width/2-550;
    int sunLocY = height/2-240;
    int radius = 130/2;
    if (mouseX>sunLocX-radius && mouseX<sunLocX+radius && mouseY>sunLocY-radius && mouseY<sunLocY+radius) {
      sunY = sunY+2;
      if (sunY == -150) {
        sunSound.play();
      }
    }
    int myDist = int(dist(mouseX, mouseY, width/2, height/2));
    if (myDist<270 && myDist>150) {
      shaking =  int((myDist-150)/12.5);
      if (!files[shaking].isPlaying()) {
        files[shaking].play();
      }
    } else {
      shaking = -1;
    }
  }
}
