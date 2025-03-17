class Orb {

  //instance variables
  PVector center;
  PVector velocity;
  PVector acceleration;
  float bsize;
  float mass;
  color c;


  Orb() {
     bsize = random(10, MAX_SIZE);
     float x = random(bsize/2, width-bsize/2);
     float y = random(bsize/2, height-bsize/2);
     center = new PVector(x, y);
     mass = random(10, 100);
     velocity = new PVector();
     acceleration = new PVector();
     setColor();
  }

  Orb(float x, float y, float s, float m) {
     bsize = s;
     mass = m;
     center = new PVector(x, y);
     velocity = new PVector();
     acceleration = new PVector();
     setColor();
   }

  //movement behavior
  void move(boolean bounce) {
    if (bounce) {
      xBounce();
      yBounce();
    }

    velocity.add(acceleration);
    center.add(velocity);
    acceleration.mult(0);
  }//move

  void applyForce(PVector force) {
    PVector scaleForce = force.copy();
    scaleForce.div(mass);
    acceleration.add(scaleForce);
  }

  PVector getDragForce(float cd) {
    float dragMag = velocity.mag();
    dragMag = -0.5 * dragMag * dragMag * cd;
    PVector dragForce = velocity.copy();
    dragForce.normalize();
    dragForce.mult(dragMag);
    return dragForce;
  }

PVector getGravityForce(FixedOrb earth, float G_CONSTANT) {
  if (earth == null) return new PVector(0, 0); // Prevent NPE
  PVector force = PVector.sub(earth.center, this.center);
  float distance = force.mag();
  float strength = (G_CONSTANT * this.mass * earth.mass) / (distance * distance);
  force.setMag(strength);
  return force;
}


  /* ===================================
    getSpring()

    This should calculate the force felt on the calling object by
    a spring between the calling object and other.

    The resulting force should pull the calling object towards
    other if the spring is extended past springLength and should
    push the calling object away from o if the spring is compressed
    to be less than springLength.

    F = kx (ABhat)
      k: Spring constant
      x: displacement, the difference of the distance
         between A and B and the length of the spring.
      (ABhat): The normalized vector from A to B
  =================================== */
PVector getSpringForce(Orb other, float restLength, float k) {
 
  PVector direction = PVector.sub(other.center, this.center);
  float currentLength = direction.mag();
  float displacement = currentLength - restLength;
  direction.normalize();
  float forceMagnitude = -k * displacement;
  direction.mult(forceMagnitude);
  return direction;
}


  boolean yBounce(){
    if (center.y > height - bsize/2) {
      velocity.y *= -1;
      center.y = height - bsize/2;

      return true;
    }//bottom bounce
    else if (center.y < bsize/2) {
      velocity.y*= -1;
      center.y = bsize/2;
      return true;
    }
    return false;
  }//yBounce
  boolean xBounce() {
    if (center.x > width - bsize/2) {
      center.x = width - bsize/2;
      velocity.x *= -1;
      return true;
    }
    else if (center.x < bsize/2) {
      center.x = bsize/2;
      velocity.x *= -1;
      return true;
    }
    return false;
  }//xbounce

  boolean collisionCheck(Orb other) {
    return ( this.center.dist(other.center)
             <= (this.bsize/2 + other.bsize/2) );
  }//collisionCheck


  void setColor() {
    color c0 = color(0, 255, 255);
    color c1 = color(0);
    c = lerpColor(c0, c1, (mass-MIN_SIZE)/(MAX_MASS-MIN_SIZE));
  }//setColor

  //visual behavior
  void display() {
    noStroke();
    fill(c);
    circle(center.x, center.y, bsize);
    fill(0);
    //text(mass, center.x, center.y);
  }//display
}//Ball
