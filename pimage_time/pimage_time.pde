

PImage a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13;
PImage a14, a15, a16, a17, a18, a19, a20, a21, a22;
int time = 0;

float timer = 0;
float x = 0;
float y = 0;
float speed = 10;
float angle = PI / 7;

void setup() {
  size(500,300);
    a1 = loadImage(1+".jpg");
    a2 = loadImage(2+".jpg");
    a3 = loadImage(3+".jpg");
    a4 = loadImage(4+".jpg");
    a5 = loadImage(5+".jpg");
    a6 = loadImage(6+".jpg");
    a7 = loadImage(7+".jpg");
    a8 = loadImage(8+".jpg");
    a9 = loadImage(9+".jpg");
    a10 = loadImage(10+".jpg");
    a11 = loadImage(11+".jpg");
    a12 = loadImage(12+".jpg");
    a13 = loadImage(13+".jpg");
    a14 = loadImage(14+".jpg");
    a15 = loadImage(15+".jpg");
    a16 = loadImage(16+".jpg");
    a17 = loadImage(17+".jpg");
    a18 = loadImage(18+".jpg");
    a19 = loadImage(19+".jpg");
    a20 = loadImage(20+".jpg");
    a21 = loadImage(21+".jpg");
    a22 = loadImage(22+".jpg");
  timer = millis();
}

void draw() {
  background(0);
  if (time == 0) image(a1, 0,0);
  if (time == 1) image(a2, 0,0);
  if (time == 2) image(a3, 0,0);
  if (time == 3) image(a4, 0,0);
  if (time == 4) image(a5, 0,0);
  if (time == 5) image(a6, 0,0);
  if (time == 6) image(a7, 0,0);
  if (time == 7) image(a8, 0,0);
  if (time == 8) image(a9, 0,0);
  if (time == 9) image(a10, 0,0);
  if (time == 10) image(a11, 0,0);
  if (time == 11) image(a12, 0,0);
  if (time == 12) image(a13, 0,0);
  if (time == 13) image(a14, 0,0);
  if (time == 14) image(a15, 0,0);
  if (time == 15) image(a16, 0,0);
  if (time == 16) image(a17, 0,0);
  if (time == 17) image(a18, 0,0);
  if (time == 18) image(a19, 0,0);
  if (time == 19) image(a20, 0,0);
  if (time == 20) image(a21, 0,0);
  if (time == 21) image(a22, 0,0);
  
  noStroke();
  fill(255,0,0, 50);
  x = x + speed * cos(angle);
  y = y + speed * sin(angle);
  
  // check screen limits
  if (x+50 > width)  { angle = PI - angle; }
  if (x < 0)         { angle = 3 * PI - angle; }
  if (y+50 > height) { angle = 2 * PI - angle; }
  if (y < 0)         { angle = 2 * PI - angle; }
  
  rect(x,y, 50,50);
  
  if (millis() - timer > 500) {
    time = time + 1;
    timer = millis();
  }
  if (time > 21) time = 0;
}
