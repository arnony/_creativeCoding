//Babushka of circles and rects + lines coming from the top left corner and spreading to the right side of the canvas
function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
  circle(100, 100, 60);
  circle(100, 100, 50);
  circle(100, 100, 40);
  circle(100, 100, 30);
  circle(100, 100, 20);
  circle(100, 100, 10);

  rect(150, 150, 100, 80);
  rect(160, 160, 80, 60);
  rect(170, 170, 60, 40);
  rect(180, 180, 40, 20);

  line(10, 10, 370, 10);
  line(10, 12, 370, 30);
  line(10, 14, 370, 50);
  line(10, 16, 370, 70);
  line(10, 18, 370, 90);
  line(10, 20, 370, 110);
  line(10, 22, 370, 130);
  line(10, 24, 370, 150);
  line(10, 26, 370, 170);
  line(10, 28, 370, 190);
  line(10, 30, 370, 210);
  line(10, 32, 370, 230);
  line(10, 34, 370, 250);
}
