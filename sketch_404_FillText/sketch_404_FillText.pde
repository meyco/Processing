void setup() {
  size(400, 400);
  colorMode(HSB, 22);
  background(99);
}

void draw() {
  PFont font = loadFont("test.vlw");
  textFont(font);
  textAlign(CENTER);
  int count = 0; 

  while (count < 1) {
    float x = 200 - random(width);
    float y = 200 - random(height);

    float distance = sqrt(x*x + y*y);
    if ( distance < 150) {
      textSize(random(10, 20));

      fill(random(50, 60), 99, 99, 80);
      text("404 Not Found", 200 + x, 200 + y);
    }
    ++count;
  }
}
