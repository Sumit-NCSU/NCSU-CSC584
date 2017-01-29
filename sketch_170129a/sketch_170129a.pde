int xPos = 10;
int xDir = 10;
int yPos = 390;
int yDir = -10;

void setup() {
  size(400,400);
  smooth();
  background(0);
  noStroke();
  fill(255,0,0);
}

void draw() {
  background(0);
  fill(255,0,0);
  ellipse(xPos, yPos, 20, 20);
  move();
}

void move() {
  if (yPos == 390 || yPos == 10) {
    xPos = xPos + xDir;
  }
  if (xPos <= 10 || xPos > width - 10) {
    xDir = xDir * -1;
  }
  if (xPos == 390 || xPos == 10) {
    yPos = yPos + yDir;
  }
  if (yPos <= 10 || yPos > height - 10) {
    yDir = yDir * -1;
  }  
}

class Steering {
  PVector position;
  float orientation;
}

class Kinematic {
  PVector position; // a 2 or 3D vector
  float orientation; // a single floating point value
  PVector velocity; // another 2 or 3D vector
  float rotation; // a single floating point value
}