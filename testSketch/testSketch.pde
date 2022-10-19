int cy, cx, pcx, pcy;

void setup() {
  size(800, 800);
  frameRate(60);
  background(0);
  cx = width/2;
  cy = height/2;
}

void draw() {


  background(0);
  pcx = cx;
  pcy = cy;
  fill(244, 0, 0);
  textSize(20);
  text("circle coords: " + cx + ", " + cy, 600, 770);
  fill(255);
  rectMode(CENTER);
  stroke(255);
  if (circOnEdge()) {
    fill(255, 0, 255);
  }
  circle(cx, cy, 50);
  cx += random(-10, 10);
  cy += random(-10, 10);

  stroke(255);
  line(width/2, height/2, pcx, pcy);



  if (circOnEdge()) {
    cx = width/2;
    cy = height/2;
  }
}

void mousePressed() {
  background(100);
}

void keyPressed() {
  background(255, 0, 0);
}

boolean circOnEdge() {
  if ((cx + 25 >= width) || (cx - 25 <= 0) || (cy + 25 >= height) || (cy - 25 <= 0)) {
    return true;
  } else {
    return false;
  }
}
