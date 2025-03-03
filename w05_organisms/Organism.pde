class Organism {
  PVector position;
  int size;
  int health;
  Tank tank; 

  Organism(int size, float x, float y, int health, Tank tank) {
    this.position = new PVector(x, y);
    this.size = size;
    this.health = health;
    this.tank = tank;
  }

  void update() {

    age();
  }

  void display() {

    fill(0);
    ellipse(position.x, position.y, size, size);
  }

  void age() {
    health--;
    if (health <= 0) {
     // tank = null;
      
    }
  }
}
