float len = 750;
void setup() {
  size(800, 800); 
  stroke(161, 0, 0);
  fill(100);
}

void draw() {
  background(255);
  sierpinski(width/2 - len/2, height/2 + sin(PI/3) * len/2, len, 1);
  
}
void sierpinski(float x, float y, float len, int level) {
  if (level == 10) drawTriangle(x, y, len);
  else {
    sierpinski(x, y, len/2, level+1);
    sierpinski(x + len/2, y, len/2, level+1);
    sierpinski(x + len/4, y - sin(PI/3) * len/2, len/2, level + 1);
  }
  
}


void drawTriangle(float x, float y, float len) {
  triangle(x, y, x + len/2, y - sin(PI/3) * len, x + len, y);
}
