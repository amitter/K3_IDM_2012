class Circle {
  float x=0;
  float y=0;
  float r=10;
  String q="";

  Circle() {
  }

  void display() {
    fill(50);
    ellipse(x, y, 2*r, 2*r);
    stroke(255, 0, 0, 100);
    line(x+5, y, x-5, y);
    line(x, y+5, x, y-5);
    stroke(200, 50);
    if (mouseX < x+10 && mouseX > x-10 && mouseY < y+10 && mouseY > y-10) {
      //println(in+" "+in2);
    }
  }
}
