PImage[] a;
int a1 = 20;
int time=0;
float timer;

void setup() {
  size(300, 300);
  a = new PImage[a1];
  for (int i=1; i<a1; i++) {
    a[i] = loadImage(i+".jpg");
  }
  timer=millis();
}

void draw() {  
  for (int i=1; i<a1; i++) {
    if(time==i) image(a[i], 0,0);
  }
  if(millis()-timer > 100) {
    time+=1;
    if(time==a1) time=0;
    timer=millis();
  }
}

