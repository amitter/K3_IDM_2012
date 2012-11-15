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
  y0 = millis() % 1000;

  image(a[0], x,y, digitX,digitY);    
  image(a[0], x-digitX,y, digitX,digitY);    

  // first digit
  for (int i=0; i<10; i++) {
    if (i < 10-1) {
      if (time==i) image(a[i+1], x,y, digitX,digitY);
    }
    if (time==i) image(a[i], x,y0, digitX,digitY);
  }

  // second digit
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

