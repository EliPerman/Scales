void setup() {
  size(500, 500);
  noLoop();
  colorMode(HSB);
}

void draw() {
  boolean shift = true;
  for(int y = 500; y >= -75; y -=25)
  {
    for(int x = 0; x <= 500; x +=100)
    {
      if(shift == true)
        scale(x - 50, y);
      else
        scale(x, y);
    }
    
    if(shift == true)
      shift = false;
    else
      shift = true;
  }
}

void scale(int x, int y) {
  float h = 90 + 20 * (float) Math.random();
  float b = 50 + 50 * (float) Math.random();
  fill(100, 25, b);
  stroke(0);
  
  bezier(x, y, x, y + h/2, x + 10, y + 0.9*h, x + 50, y + h);
  bezier(x + 50, y + h, x + 90, y + 0.9*h, x + 100, y + h/2, x + 100, y);
  
  stroke(100, 25, b);

  triangle(x, y, x + 50, y + h, x + 100, y);
}
