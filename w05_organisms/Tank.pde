class Tank {
  float waterLevel;
  ArrayList<Organism> organisms;

  Tank(float waterLevel) {
    this.waterLevel = waterLevel;
    organisms = new ArrayList<Organism>();
  }

  void addOrganism(Organism organism) {
    organisms.add(organism);
  }

  void update() {
    for (Organism organism : organisms) {
      organism.update();
      organism.display();
    }
  }

  boolean isInWater(float y) {
    return y < waterLevel;
  }

  boolean isOnFloor(float y) {
    return y >= waterLevel;
  }
}
