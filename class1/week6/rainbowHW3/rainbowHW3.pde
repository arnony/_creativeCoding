import processing.sound.*; // you need this line at the beginning if you intend to play sound.
//Also note - sound library must be added to processing (on the top menu: Tools/Add Tool/Libraries - search Sound and add it.

int sunY = -240;
int shaking = -1; // By the way - if I set shaking to be 0 here, it will shake the first bow from the beginning and will invite the user to play with it.
//(it actually takes more changes, since the shaking currently happens only when the mouse is pressed.)

SoundFile sunSound; // and this is how you declare a soundFile "player".
SoundFile[] files = new SoundFile[10]; // and this is called array. in this case - an array that "holds" 10 sound "players"

void setup() {
  size(1400, 900);
  background(255);
  colorMode(HSB, 255);
  sunSound = new SoundFile(this, "water_blup2.mp3"); // this is the way to tell the player which file it will later play.
  for (int i=0; i<10; i=i+1) {
    files[i] = new SoundFile(this, "Recording_"+i+".wav"); // each sound player holds a specific sound file. for example "recording_2.wav" (and such sound file MUST exist in data folder)
  }
}


void draw() {
  translate(width/2, height/2);
  //sky:
  noStroke();
  fill(150, 100, 255);
  rect (-width/2, -height, width, height);

  //rainbow:
  stroke(0);
  for (int j=9; j>=0; j=j-1) {
    fill (j*28, 255, 255);
    if (shaking ==j) {
      circle (0, 0, 25*j+300+ random(1, 5)); // random(1,5) returns a random value between 1 and 5.יארקא רפסמ
    } else {
      strokeWeight(1);
      circle (0, 0, 25*j+300);
    }
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
      //inside the sun (inside its original location)
      sunY = sunY+2;
      if (sunY == -150) {//Sun reached the water !
        sunSound.play();  //this is how we play the sun's sound
      }
    }


    //if dragging one of the arcs of the rainbow - shake it:
    int myDist = int(dist(mouseX, mouseY, width/2, height/2)); //dist calculates the distance between 2 points. see Processing Referrence !
    if (myDist<270 && myDist>150) {
      //if I'm inside rainbow i - shake it. I want to shake bow 0 or 1, or 2 .... ...9 based on my distance from the center
      shaking =  int((myDist-150)/12.5);
      if (!files[shaking].isPlaying()) { // if the sound is not playing ("!" means NOT)
        files[shaking].play(); // this is the way we play the right sound   ("shaking" can be 0 or 1, 2, 3 ....  ..9)
      }
    } else {
      shaking = -1;
    }
  }
}
