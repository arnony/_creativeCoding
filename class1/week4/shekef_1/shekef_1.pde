//////////////////////////////////////////////////////////////////////////////////////////////////
// week 4, 2nd class 2.2.2022
// we're going to print for ourselves this little slide:
// it's a nice opportunity to play with FOR loops, and our ability to
//       shift things, rotate, scale and color things a bit at each step, with many repeatitions
//////////////////////////////////////////////////////////////////////////////////////////////////

void setup() {
  size(450, 800);
  background(255, 255, 255, 0);

  textSize(14);
  fill(0);
  // TODO 1: replace 'arnon' with your name:
  text ("arnon, 2/2/22", width-100, height-20);
  colorMode(HSB, 255);
  translate(width/2, height/2-100);
  pushMatrix();

  //TODO 3: change i<15 to i<255:
  for (int i=0; i<15; i++) {


    /////////////////////////////////////////////////////////////////////
    //TODO 2: your main focus is here: play with the following lines:

    fill(i, 255, 255, 120);
    triangle (0, 0, 100, 0, 80, 30);
    rotate(radians(10));

    /////////////////////////////////////////////////////////////////////
  }
  popMatrix();

  //TODO 4: if you're happy with the results - upload the following image to arnon to https://www.dropbox.com/request/hn8UTVxmulXTCTLSOwFl
  // (the image can be found at the same folder of your code)
  save("masterpiece1.tif");
}
