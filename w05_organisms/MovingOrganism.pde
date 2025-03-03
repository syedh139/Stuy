class MovingOrganism extends Organism {
  float speed; 
  float directionX, directionY; 

  MovingOrganism(int size, float x, float y, int health, Tank tank, float speed) {
    super(size, x, y, health, tank);
    this.speed = speed;
    this.directionX = random(-1, 1);
    this.directionY = random(-1, 1);
  }

  @Override
  void update() {
    move();
    super.update();
  }

  void move() {
    
    position.x += directionX * speed;
    position.y += directionY * speed;

    
    if (position.x < 0 || position.x > width) {
      directionX *= -1;
    }
    if (position.y < 0 || position.y > height) {
      directionY *= -1;
                  }
  }
}
