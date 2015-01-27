void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  //ここから下にHSB宣言
  //色相・彩度・明度・MAX360
  background(0, 0, 0, 255);
   //backgroundが強制的にRGB、alphaになる。

}

void draw() {
  PFont font = loadFont("test.vlw");
  textFont(font);
  textAlign(CENTER);
  int count = 0; 

  while (count < 1) {
    float x = 400 - random(width);
    float y = 300 - random(height);
    int radius = 200;
     //半径200を変数で定義

    float distance = sqrt(x*x + y*y);
    //中心の距離をSquareRoot（平方根）で求める
    
    if ( distance < radius ) {
      textSize(random(10, 20));
      fill(random(0, 360), 200, 99, 255);
      text("404 Not Found", width / 4 + x, height / 4 + y);
    }
    ++count;
  }
}
