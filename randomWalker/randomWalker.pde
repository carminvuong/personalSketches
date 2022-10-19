Walker w;

void setup() {
  float c = random(1, 256);
  frameRate(240);
  size(500, 500);
  background(255);
  //fill(random(1, 256), random(1, 256), random(1, 256));
  noStroke();
  w = new Walker(width/2, height/2, 10);
}

void draw() {
  w.walk();
  w.show();
}
