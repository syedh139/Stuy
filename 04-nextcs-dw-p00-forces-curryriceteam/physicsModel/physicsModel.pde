/* ===================================
 SpringArrayDriver (Most Work Goes Here)
 
 You will write a program that creates an array or orbs. When run, the simulation should show the orbs being connected by springs, which will push and pull the orbs according to the spring force.
 
 Earth gravity will be a toggelable option. As well as whether the simulation is running movement or not.
 
 Part 0: Create and populate the array of orbs.
 Part 1: Draw the "springs" connecting the orbs.
 Part 2: Calculate and apply the spring force to the
 orbs in the array.
 Part 3: Apply earth based gravity and drag if those
 options are turned on.
 Part 4: Allow for the removal and addition of orbs
 =================================== */


//int NUM_ORBS = 10;
int MIN_SIZE = 10;
int MAX_SIZE = 60;
float MIN_MASS = 10;
float MAX_MASS = 100;
float G_CONSTANT = 1;
float D_COEF = 0.1;

int SPRING_LENGTH = 50;
float  SPRING_K = 0.005;

int MOVING = 0;
int BOUNCE = 1;
int GRAVITY = 2;
int DRAGF = 3;
int Orbit = 4;
int Spring = 5;
int DragSet = 6;
int Custom = 7;
int Pendulum = 8;
boolean[] toggles = new boolean[9];
String[] modes = {"Moving", "Bounce", "Gravity", "Drag", "Orbit", "Spring", "DragSet", "Custom", "Pendulum"};

FixedOrb earth;
Orb[] orbs;
int orbCount;

void setup() {
  size(800, 600); // Set the size of the window

  // Initialize Earth as a fixed orb at the center of the screen
  earth = new FixedOrb(width / 2, height / 2, 100, 500); // Adjust the size and mass

  // Create orbs with an ordered setup (you can change it to false for random positions)
  makeOrbs(true, 10); // 10 orbs, ordered

  // You can toggle the modes here if you want them enabled by default
  toggles[MOVING] = false;  // Start with the movement enabled
  toggles[GRAVITY] = false; // Gravity enabled by default
  toggles[BOUNCE] = false;  // Bounce enabled by default
  toggles[Spring] = false;  // Springs between orbs enabled by default
  toggles[Custom] = false;  // Custom mode is initially disabled
}

void draw() {
  background(255);
  displayMode();

  // If the custom mode is enabled, run the custom simulation
  if (toggles[Custom]) {
    custom();  // Call the custom function for magnet-attracting orbs simulation
  }

  // Handle Orbit mode
  if (toggles[Orbit]) {
    drawOrbit(); // Draw orbital paths
    OrbitUpdate(); // Move and display orbiting orbs
  }

  // Handle Spring mode
  if (toggles[Spring]) {
    for (int o = 0; o < orbCount; o++) {
      orbs[o].display();
      if (o < orbCount - 1) {
        drawSpring(orbs[o], orbs[o + 1]); // Draw springs between orbs
      }
    }
  }

  // If the moving mode is toggled, apply forces and move orbs
  if (toggles[MOVING]) {
    applySprings(); // Apply spring forces

    for (int o = 0; o < orbCount; o++) {
      if (toggles[GRAVITY]) {
        orbs[o].applyForce(orbs[o].getGravity(earth, G_CONSTANT));
      }
      if (toggles[DRAGF]) {
        orbs[o].applyForce(orbs[o].getDragForce(D_COEF));
      }
      orbs[o].move(toggles[BOUNCE]);
    }
  }
}


/* ===================================
 makeOrbs(boolean ordered)
 
 Set orbCount to NUM_ORBS
 Initialize and create orbCount Orbs in orbs.
 All orbs should have random mass and size.
 The first orb should be a FixedOrb
 If ordered is true:
 The orbs should be spaced SPRING_LENGTH distance
 apart along the middle of the screen.
 If ordered is false:
 The orbs should be positioned radomly.
 
 Each orb will be "connected" to its neighbors in the array.
 ===================================
 USAGES
 
 
 If the formayion is ordered it creates orbs vertical
 with relatively random y values.
 
 ============================================
 */








void makeOrbs(boolean ordered, int NUM_ORBS) {
  orbCount = NUM_ORBS;
  orbs = new Orb[orbCount];
  float xStart = width / 2;
  float yStart = height / 3;

  for (int i = 0; i < orbCount; i++) {
    float size = random(MIN_SIZE, MAX_SIZE);
    float mass = random(MIN_MASS, MAX_MASS);

    if (i == 0) {
      orbs[i] = new FixedOrb(xStart, yStart, size, mass);
    } else {
      float x = ordered ? xStart : random(size / 2, width - size / 2);
      float y = ordered ? yStart + i * SPRING_LENGTH : random(size / 2, height - size / 2);
      orbs[i] = new Orb(x, y, size, mass);
    }
  }
}//makeOrbs


/* ===================================
 drawSpring(Orb o0, Orb o1)
 
 Draw a line between the two Orbs.
 Line color should change as follows:
 red: The spring is stretched.
 green: The spring is compressed.
 black: The spring is at its normal length
 =================================== */
void drawSpring(Orb o0, Orb o1) {
  float distance = o0.center.dist(o1.center);

  if (distance > SPRING_LENGTH) {
    stroke(255, 0, 0);
  } else if (distance < SPRING_LENGTH) {
    stroke(0, 255, 0);
  } else {
    stroke(0);
  }

  line(o0.center.x, o0.center.y, o1.center.x, o1.center.y);
}//drawSpring


/* ===================================
 applySprings()
 
 FIRST: Fill in getSpring in the Orb class.
 
 THEN:
 Go through the Orbs array and apply the spring
 force correctly for each orb. We will consider every
 orb as being "connected" via a spring to is
 neighboring orbs in the array.
 =================================== */



/*
USSAGE
 applyspring --> force
 Force --> ApplyForce(force)
 
 
 
 */
void applySprings() {
  for (int i = 0; i < orbCount - 1; i++) {
    PVector force = orbs[i].getSpring(orbs[i + 1], SPRING_LENGTH, SPRING_K);
    orbs[i].applyForce(force);
    orbs[i + 1].applyForce(force.mult(-1));
  }
}//applySprings

/* ===================================
 addOrb()
 
 Add an orb to the arry of orbs.
 
 If the array of orbs is full, make a
 new, larger array that contains all
 the current orbs and the new one.
 (check out arrayCopy() to help)
 =================================== */
void addOrb() {
  Orb[] newOrbs = new Orb[orbCount + 1];
  arrayCopy(orbs, newOrbs);

  float size = random(MIN_SIZE, MAX_SIZE);
  float mass = random(MIN_MASS, MAX_MASS);
  float x = random(size / 2, width - size / 2);
  float y = random(size / 2, height - size / 2);

  newOrbs[orbCount] = new Orb(x, y, size, mass);
  orbs = newOrbs;
  orbCount++;
}//addOrb


/* ===================================
 keyPressed()
 
 Toggle the various modes on and off
 Use 1 and 2 to setup model.
 Use - and + to add/remove orbs.
 =================================== */
void keyPressed() {
  if (key == ' ') {
    toggles[MOVING] = !toggles[MOVING];
  }
  if (key == 'g') {
    toggles[GRAVITY] = !toggles[GRAVITY];
  }
  if (key == 'b') {
    toggles[BOUNCE] = !toggles[BOUNCE];
  }
  if (key == 'd') {
    toggles[DRAGF] = !toggles[DRAGF];
  }
  if (key == '1') {
    toggles[Orbit] = !toggles[Orbit];
  }
  if (key == '2') {
    toggles[Spring] = !toggles[Spring];
  }
  if (key == '3') {
    toggles[DragSet] = !toggles[DragSet];
  }
  if (key == '4') {
    toggles[Custom] = !toggles[Custom];
  }
  if (key == '5') {
    toggles[Pendulum] = !toggles[Pendulum];
  }



  if (key == '-') {
    //Part 4: Write code to remove an orb from the array
  }//removal
  if (key == '=' || key == '+') {
    //Part 4: Write addOrb() below
    addOrb();
  }//addition
}//keyPressed



void displayMode() {
  textAlign(LEFT, TOP);
  textSize(20);
  noStroke();
  int spacing = 85;
  int x = 0;

  for (int m=0; m<toggles.length; m++) {
    //set box color
    if (toggles[m]) {
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }

    float w = textWidth(modes[m]);
    rect(x, 0, w+5, 20);
    fill(0);
    text(modes[m], x+2, 2);
    x+= w+5;
  }
}//display



void Orbit(int NUM_ORBS) {
  orbCount = NUM_ORBS;
  orbs = new Orb[orbCount];

  for (int i = 0; i < orbCount; i++) {
    float angle = random(TWO_PI); // Random starting angle
    float distance = random(100, 200); // Random orbit distance
    float size = random(MIN_SIZE, MAX_SIZE);
    float mass = random(MIN_MASS, MAX_MASS);

    // Positioning the orb in a circle around the center
    float x = earth.center.x + cos(angle) * distance;
    float y = earth.center.y + sin(angle) * distance;

    // Create the orb
    orbs[i] = new Orb(x, y, size, mass);

    // Calculate initial velocity for a stable orbit (perpendicular to radius)
    PVector velocity = new PVector(-sin(angle), cos(angle));
    float speed = sqrt(G_CONSTANT * earth.mass / distance);
    velocity.setMag(speed);

    orbs[i].velocity = velocity;
  }
}

void drawOrbit() {
  stroke(150, 150, 255, 100); // Light blue color for orbit paths
  noFill();

  for (int i = 0; i < orbCount; i++) {
    Orb orb = orbs[i];
    float distance = dist(orb.center.x, orb.center.y, earth.center.x, earth.center.y);

    // Draw a dashed circle around the earth where the orb moves
    drawDashedCircle(earth.center.x, earth.center.y, distance * 2);
  }
}



void drawDashedCircle(float x, float y, float diameter) {
  int segments = 50; // Number of segments for the dashed circle
  float angleStep = TWO_PI / segments;

  for (int i = 0; i < segments; i += 2) { // Every second segment is drawn
    float angle1 = i * angleStep;
    float angle2 = (i + 1) * angleStep;

    float x1 = x + cos(angle1) * diameter / 2;
    float y1 = y + sin(angle1) * diameter / 2;
    float x2 = x + cos(angle2) * diameter / 2;
    float y2 = y + sin(angle2) * diameter / 2;

    line(x1, y1, x2, y2);
  }
}


void OrbitUpdate() {
  for (int i = 0; i < orbCount; i++) {
    PVector direction = PVector.sub(earth.center, orbs[i].center);
    float distance = direction.mag();
    float forceMagnitude = G_CONSTANT * earth.mass / (distance * distance);

    PVector gravitationalForce = direction.setMag(forceMagnitude);
    orbs[i].applyForce(gravitationalForce);

    orbs[i].move(false);
    orbs[i].display();
  }
}




void Spring() {
}



void Drag() {
}


void custom() {
  // Create the magnet in the center of the screen (fixed position)
  FixedOrb magnet = new FixedOrb(width / 2, height / 2, 100, 500); // Adjust size and mass
  
  // Create orbs randomly placed on the screen
  makeOrbs(false, 10); // 10 random orbs
  
  // Apply the magnetic force from the magnet to each orb
  for (int i = 0; i < orbCount; i++) {
    // Calculate the direction vector from the orb to the magnet
    PVector direction = PVector.sub(magnet.center, orbs[i].center);
    float distance = direction.mag();
    
    // Avoid division by zero if the orb is at the exact position of the magnet
    if (distance == 0) {
      continue;
    }
    
    // Calculate the magnetic force (using inverse square law)
    // Adjust the force so that it doesn't get too large as the orb approaches the magnet
    float forceMagnitude = G_CONSTANT * magnet.mass * orbs[i].mass / (distance * distance);
    
    // Apply a maximum speed limit to slow down the orbs
    float maxSpeed = 2; // Maximum speed (you can adjust this value)
    if (orbs[i].velocity.mag() > maxSpeed) {
      orbs[i].velocity.setMag(maxSpeed); // Limit the speed
    }
    
    // Introduce damping to reduce the velocity over time
    float damping = 0.1; // Adjust this value to control the damping effect
    PVector velocity = orbs[i].velocity.copy(); // Get current velocity
    velocity.mult(1 - damping); // Reduce velocity to simulate friction
    
    // Apply damping to the orb's velocity
    orbs[i].velocity = velocity;
    
    // Apply the magnetic force, scaling it by the distance to avoid high forces when too close
    PVector magneticForce = direction.setMag(forceMagnitude);
    orbs[i].applyForce(magneticForce);
    
    // Move and display the orb
    orbs[i].move(false); // No bounce for simplicity
    orbs[i].display();
  }
}




void pendulum() {
}
