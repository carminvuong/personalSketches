class Walker {
  int x, y, d; // fields
  
  Walker(int x, int y, int diameter) {  // constructor
    this.x = x; 
    this.y = y;
    d = diameter;
  }
  
  void walk() {
    int choice = int(random(4));
    
    if (choice == 0) {
      x += 10;
    }
    else if (choice == 1) {
      x -= 10;
    }
    else if (choice == 2) {
      y += 10;
    }
    else {
      y -= 10;
    }
    
    
    
    // constrains x and y to certain bounds
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }
    
  void show() {
    fill(random(1, 256), random(1, 256), random(1, 256));
    circle(x, y, d);
  }
}
