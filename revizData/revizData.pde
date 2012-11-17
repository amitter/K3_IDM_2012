// MAX is 370, MIN is 0
// AVERAGE is 2.215613
// lots of 0s
int dataCount = 177;  // pieces.length = 178
Circle[] c = new Circle[dataCount];
String[] lines;
int index, in, in2, zeroCount;
float rr = random(50, 100);
float rg = random(50, 100);
float rb = random(50, 100);
float cr, cg, cb;
PFont font;

void setup() {
  size(800, 600);
  frameRate(12);
  lines = loadStrings("data.txt");
  for (int i=0;i<dataCount;i++) {
    c[i] = new Circle();
  }
  String[] pieces0 = split(lines[0], ',');
  for (int i=0;i<pieces0.length-1;i++) {
    c[i].q = pieces0[i];
  }
font = loadFont("Eureka-24.vlw"); 
textFont(font, 48); 

}


void draw() {
  background(rr, rg, rb);  //black is a boring color, this is only for the visualization
  index = int(map(mouseX, 0, width, 1, 92));
  fill(255);
  text("day "+index, width-125, height-50);

  String[] pieces = split(lines[index], ',');
  for (int i=0;i<pieces.length-1;i++) {
    c[i].r = float(pieces[i]);
    if (c[i].r == 0) {  //FIXME
      zeroCount++;
    }
  }
  stroke(200, 50);
  noFill();
  for (int i=0; i<16; i++) {
    for (int j=0; j<12; j++) {
      float w = width/16;
      float x = i*w;
      float y = j*w;
      rect(x, y, w, w);
    }
  }
  for (int i=0; i<16; i++) {
    for (int j=0; j<12; j++) {
      float w = width/16;
      float x = i*w;
      float y = j*w;
      if (i*12+j < dataCount) {
        c[i*12+j].x=x;
        c[i*12+j].y=y;
        c[i*12+j].display();
        in = i;
        in2 = j;
//        println(c[i*12+j].q);
      }
    }
  }
}


void mouseReleased() {
  //FIXME background white, other settings
  //background(255);
  //noFill();
  //stroke(0);
  saveFrame("screen##.png");
  //background(rr, rg, rb);
}

