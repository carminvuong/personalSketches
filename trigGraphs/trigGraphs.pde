float x, y, d, amp, a, b, X, Y, tanAsym;

void setup() {
  frameRate(1000);
  background(0);
  noStroke();
  size(1440, 400);
  x = 0;
  amp = 50;
  d = 5;
  X= 0;
  Y= 0;
}


void draw() {
  fill(255, 0, 0); 
  drawSin();

  fill(0, 255, 0);
  drawTan();

  fill(0, 0, 255);
  drawCos();

  fill(255);
  circle(X, height/2, d-1);  // X-AXIS (AT height/2)
  circle(width/2, Y, d-1);   // Y-AXIS (AT width/2)


  if (frameCount % 10 == 0) {      // marks range as y = [-1, 1]
    circle(X, height/2+amp, d-1);
    circle(X, height/2-amp, d-1);
  }
  
  if (abs(tanAsym - 90) % 180 == 0) { // marks tan asymptotes
    fill(150);
    rect(tanAsym, 0, 2, height);
  }
  X++;
  Y++;
  tanAsym++;
}

// -------------- MAKE draw...() FUNCTIONS BETTER (parameters) ------------------

void drawSin() {
  circle(x, y, d);
  x++;
  y = -amp * sin(radians(x))+height/2; // SIN
}

void drawTan() {
  circle(x, b, d);
  a++;
  b = -amp*tan(radians(x))+height/2; // TAN
}

void drawCos() {
  circle(x, a, d);
  a++;
  a = -amp*cos(radians(x))+height/2; // COS
}
