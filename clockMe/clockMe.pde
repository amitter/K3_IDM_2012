PImage[] a;
int time=0;
float timer;
float x, y, digitX, digitY, y0;
int counter;

void setup() {
  size(screen.width/5*2, screen.height-screen.height/2);
  digitX = screen.width/5;                 // digit sizes
  digitY = screen.height-screen.height/2;

  a = new PImage[10];
  for (int i=0; i<10; i++) {
    a[i] = loadImage(i+".jpg");
  }

  timer=millis();
  

}

void draw() {
  background(0);
  x=width-screen.width/5;
  y=0;
//  y=millis()-timer % 1000;
//  y0 = map(y, 0,1000, 0,height);
  for (int i=0; i<10; i++) {
    if (time==i) image(a[i], x,y, digitX,digitY);
  }

  for (int i=0; i<10; i++) {
    if (counter == i) {
        pushMatrix();
          translate(-digitX,0);
          image(a[i], x,y, digitX,digitY);
        popMatrix();
    }
  }

  if (millis()-timer > 1000) {
    time+=1;
    if (time>9) {
      time=0;
      counter+=1;
    }
    timer=millis();
  }

}

