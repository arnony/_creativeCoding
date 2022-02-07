//////////////////////////////////////////////////////////////////////////////////////////////////
// week 5, 1st class 7.2.2022
// Better understand what we did last week...
// Shift / rotate / scale and color things manually.
// AND - Create your own new "command" - flower.
//////////////////////////////////////////////////////////////////////////////////////////////////

int i=0;

void setup() {
  size(450, 800);
  background(255);

  textSize(17);
  fill(0);
  // TODO 1: replace 'arnon' with your name:
  text ("arnon, 7/2/22", width-140, height-80);
  colorMode(HSB, 255);





  // TODO 2: focus on this area. draw your flower and move/rotate/scale it
  flower();
  translate(150, 150);
  flower();
  rotate(radians(20));
  flower();
  rotate(radians(20));
  flower();
 

  ///////////////////////////////////////////////////////////////////////





  //// TODO 3: if you're happy with the results - upload the following image to arnon to https://www.dropbox.com/request/hn8UTVxmulXTCTLSOwFl
  //// (the image can be found at the same folder of your code)
  save("masterpiece_w5_1.png");
}








// TODO 4: YOUR OWN new command here: Get rid of Arnon's flower. 
// Create your own shape. your own "function". 
// Name if flower or star or heart or whatever it is
void flower() {
  fill(70, 250, 250, 120);
  circle (70, 100, 60);
  fill(100, 250, 250, 120);
  circle (130, 100, 60);
  fill(130, 250, 250, 120);
  circle (100, 70, 60);
  fill(180, 250, 250, 120);
  circle (100, 130, 60);

  fill(30, 250, 250, 120);
  circle(100, 100, 70);
}
