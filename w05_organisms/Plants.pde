class Plant extends Organism {
  PImage plant;
  float growthRate; 
  float maxSize; 

  Plant(int size, float x, float y, int health, Tank tank, float growthRate, float maxSize) {
    super(size, x, y, health, tank);
    this.growthRate = growthRate;
    this.maxSize = maxSize;
    plant = loadImage("PLANT.png");
  }

  @Override
  void update() {
    if (size < maxSize) {
      size += growthRate;
    }
    super.update();
  }

  @Override
  void display() {
    imageMode(CENTER); 
    image(plant, position.x, position.y, size+10, size+10);
  }
}
