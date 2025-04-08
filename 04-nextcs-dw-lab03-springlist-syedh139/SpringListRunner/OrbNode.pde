class OrbNode extends Orb {

  OrbNode next;
  OrbNode previous; // Maintain previous for doubly linked list

  OrbNode() {
    next = previous = null;
  }//default constructor

  OrbNode(float x, float y, float s, float m) {
    super(x, y, s, m);
    next = previous = null;
  }//constructor

  void display() {
    super.display(); // Draw the orb
    if (next != null) {
      float dnext = this.center.dist(next.center);
      if (dnext < SPRING_LENGTH) { stroke(0, 255, 0); } // Green if too close
      else if (dnext > SPRING_LENGTH) { stroke(255, 0, 0); } // Red if too far
      else { stroke(0); } // Black if just right
      line(this.center.x, this.center.y, next.center.x, next.center.y); // Draw spring to next node
    }
    if (previous != null) {
      float dprev = this.center.dist(previous.center);
      if (dprev < SPRING_LENGTH) { stroke(0, 255, 0); } // Green if too close
      else if (dprev > SPRING_LENGTH) { stroke(255, 0, 0); } // Red if too far
      else { stroke(0); } // Black if just right
      line(this.center.x, this.center.y, previous.center.x, previous.center.y); // Draw spring to previous node
    }
  }//display

  void applySprings(int springLength, float springK) {
    if (next != null) {
      PVector sforce = getSpring(next, springLength, springK); // Calculate spring force to next node
      applyForce(sforce); // Apply force to current node
    }
    if (previous != null) {
      PVector sforce = getSpring(previous, springLength, springK); // Calculate spring force to previous node
      applyForce(sforce); // Apply force to current node
    }
  }//applySprings

}//OrbNode
