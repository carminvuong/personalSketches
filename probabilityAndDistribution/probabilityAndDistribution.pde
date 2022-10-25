import java.util.Random;
Random generator1, generator2;

void setup() {
  size(400, 400);
  background(255);
  noStroke();
  
  generator1 = new Random();
  generator2 = new Random();
}

void draw() {
  background(255);
  fill(0);

  
  float d = (float) generator1.nextGaussian();
  d *= 10; // adjusts the st. dev (how much the size is deviating by)
  d += 100; // adjusts the mean (average size of the circle)
  
  
  circle(width/2, height/2, d);
  
  //normalDistr(300, 15);
 
}

void normalDistr(int y, int d) {
  // can visualize normal / gaussian distribution
  
  fill(0, 10); // sets color to white and opacity to 10  | syntax: fill(rgb, alpha);
  smooth();
  
  float x = (float) generator2.nextGaussian();
  x *= 50; // determines how far the circles are from each other
  x += width/2; // centers the average x-location at the middle of the screen
  
  
  circle(x, y, d);
  
  
}
