class Fish extends MovingOrganism {
  
  PImage fish;
  
  Fish(int size, float x, float y, int health, Tank tank, float speed) {
    super(size, x, y, health, tank, speed);
    fish = loadImage("FISH.png");
  }

  @Override
  void update() {

    if (tank.isOnFloor(position.y)) {
      position.y = tank.waterLevel - size / 2;
    }
    super.update();
  }

  @Override
  void display() {
    imageMode(CENTER);
    image(fish, position.x, position.y, size, size);
  }
}
