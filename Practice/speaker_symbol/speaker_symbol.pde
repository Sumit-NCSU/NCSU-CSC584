void setup() {
  size(400, 400);
  smooth();
}

void draw() {
  fill(000);
  int x1=20;
  int y1=5;
  float k=7.2;
  ellipse(x1, x1, y1, y1);
  triangle(x1+k,x1-k,y1+2*k,x1,x1+k,x1+k);
}