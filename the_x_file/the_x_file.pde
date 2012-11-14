  int redMap, greenMap,mapper, mapper2;


void setup() {
  println("start ...");
  size(screen.width/2, screen.height/2);
  noStroke();
}

void draw() {
  redMap = int(map(mouseX, 0,screen.width, 0,255));
  greenMap = int(map(mouseY, 0,screen.height, 0,255));
  mapper = int(map(mouseX, 0,screen.width, 0,100));
  mapper2 = int(map(mouseY, 0,screen.width, 0,100));
  
//  background(mapper1, mapper2, mapper3);
  background(mapper, 0, mapper2);
  fill(redMap, greenMap, 0);
  rect(screen.width-(screen.width-10),screen.height-(screen.height-10), 20,5);
  rect(screen.width-(screen.width-15),screen.height-(screen.height-10), 5,20);

  rect(screen.width-(screen.width-35),screen.height-(screen.height-10), 5,20);
  rect(screen.width-(screen.width-35),screen.height-(screen.height-15), 20,5);
  rect(screen.width-(screen.width-55),screen.height-(screen.height-10), 5,20);
  
  
  rect(mouseX-60,mouseY-10, 20,5);
  rect(mouseX-15,mouseY-10, 5,20);

  rect(mouseX-35,mouseY-10, 5,20);
  rect(mouseX-35,mouseY-5, 20,5);
  rect(mouseX-55,mouseY-10, 5,20);
}


