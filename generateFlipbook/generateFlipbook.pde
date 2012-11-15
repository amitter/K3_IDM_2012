int choice, count;
float randomX, randomX1, randomY, randomY1;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  
  //draw box
  stroke(0);
  strokeWeight(1);
  line(0,0, width-1,0);
  line(width-1,0, width-1,height-1);
  line(width-1,height-1, 0,height-1);
  line(0,height-1, 0,0);
    
  //choose between randomX or randomY
  choice = int(random(0, 2));
  stroke(random(0,256), random(0,256), random(0,256));
  strokeWeight(random(5, 12));
    randomX = random(5, width-5);
    randomX1 = random(5, width-5);
    randomY = random(5, height-5);
    randomY1 = random(5, height-5);
    
  if (choice == 0) {
    line(randomX,0, randomX1,height/2);
    strokeWeight(random(12, 24));
    line(randomX1,height/2, random(5, width-5),height);
  }
  
  if (choice == 1) {
    line(0,randomY, width/2,randomY1);
    strokeWeight(random(12, 24));
    line(width/2,randomY1, width,random(5, height-5));
  }

  saveFrame("screen##.png");
  count+=1;
  println(count);
}

