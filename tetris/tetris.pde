// This will be tetris

// GLOBAL VARIABLES
int shapeType = int(random(1, 5));
int HORIZANTAL = 20;
int VERTICLE = 20;
color COLOR = color(255);
boolean STARTONLY;
boolean ACTIVE;

Box boxy;

void setup() {
  ACTIVE = true;
  size(500, 500);
  background(0);
  //STARTONLY = true;
  if (ACTIVE) {
    boxy = new Box(COLOR, HORIZANTAL, VERTICLE, ACTIVE);
    boxy.toGetRandomShape();
  }
  // reachEnd = false;
}

void draw() {
  background(0);
  if (STARTONLY) {

    //boxy.getRandomValue();
  }

  boxy.display();
  
  //noLoop();
  println("Active: " + ACTIVE);
}


void keyPressed() {
  if (keyCode == DOWN || key == 's' || key == 'S') {
    if (boxy.hitSurface(shapeType) == false) {
      println("Surface has been Hit: " + boxy.hitSurface(shapeType));
      boxy.moveDown();
    }
  }

  if (key == ' ') {
    boxy.shifter(shapeType);
  }
  if (keyCode == LEFT || key == 'a' || key == 'A') {
    if (boxy.hitSurface(shapeType)) {
    } else {
      boxy.moveLeft();
    }
  }
  if (keyCode == RIGHT || key == 'd' || key == 'D') {
    if (boxy.hitSurface(shapeType)) {
    } else {
      boxy.moveRight();
    }
  }
}

void onceAgain() {
  if (ACTIVE == false) {
    
  }
}
