class Turtle extends MovingOrganism {
   PImage turtle;  

  Turtle(int size, float x, float y, int health, Tank tank, float speed) {
    super(size, x, y, health, tank, speed);
     turtle = loadImage("—Pngtree—cute sea turtle illustration vector_5290760.png");
  }

  @Override
  void update() {
    super.update();
  }

  @Override
  void display() {
    imageMode(CENTER);
    image(turtle, position.x, position.y, size, size);
  }
}
