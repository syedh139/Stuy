/* ===================================
ShapeGridDriver (no changes)
=================================== */
int PATH = 0;
int POLYGON = 1;
int REGULAR = 2;
int TRIANGLE = 3;
int SQUARE = 4;
int MAX_SIZE = 100;
int MAX_POINTS = 12;

ShapeGrid g;

void setup() {
  size(600, 600);
  g = new ShapeGrid(6, 6, MAX_SIZE, MAX_POINTS);
  g.display();
}//setup

void draw() {
  background(0);
  g.display();
}//draw

void keyPressed() {
  if (key == ' ') {
    g.makeShapes();
  }
}//keyPressed
