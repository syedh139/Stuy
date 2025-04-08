/*========================== 
  
  OrbList (ALL WORK GOES HERE)

  Class to represent a Linked List of OrbNodes.

  Instance Variables:
    OrbNode front:
      The first element of the list.
      Initially, this will be null.

  Methods to work on:
    0. addFront
    1. populate
    2. display
    3. applySprings
    4. applyGravity
    5. run
    6. removeFront
    7. getSelected
    8. removeNode

  When working on these methods, make sure to
  account for null values appropraitely. When the program
  is run, no NullPointerExceptions should occur.
  =========================*/

class OrbList {

  OrbNode front;

  /*===========================
    Contructor
    Does very little.
    You do not need to modify this method.
    =========================*/
  OrbList() {
    front = null;
  }//constructor

  /*===========================
    addFront(OrbNode o)

    Insert o to the beginning of the list.
    =========================*/
void addFront(OrbNode o) {
  if (o != null) {
    o.next = front; // Link the new node to the current front
    front = o;      // Update front to point to the new node
  }
}//addFront


  /*===========================
    populate(int n, boolean ordered)

    Clear the list.
    Add n randomly generated  orbs to the list,
    using addFront.
    If ordered is true, the orbs should all
    have the same y coordinate and be spaced
    SPRING_LEGNTH apart horizontally.
    =========================*/
void populate(int n, boolean ordered) {
  // Clear the list by setting front to null
  front = null;

  for (int i = 0; i < n; i++) {
    OrbNode newNode;

    if (ordered) {
      // Place orbs in a straight line, spaced SPRING_LENGTH apart
      float x = (width / 2) - (n * SPRING_LENGTH / 2) + i * SPRING_LENGTH; // Center the orbs
      float y = height / 2; // Same y-coordinate
      newNode = new OrbNode(x, y, random(MIN_SIZE, MAX_SIZE), random(MIN_MASS, MAX_MASS));
    } else {
      // Place orbs randomly
      newNode = new OrbNode();
    }

    addFront(newNode); // Add the new node to the front of the list
  }
}//populate

  /*===========================
    display(int springLength)

    Display all the nodes in the list using
    the display method defined in the OrbNode class.
    =========================*/

void display() {
  OrbNode current = front; // Start from the front of the list
  while (current != null) { // Traverse the list until the end
    current.display(); // Call the display method for the current node
    current = current.next; // Move to the next node
  }
}//display

  /*===========================
    applySprings(int springLength, float springK)

    Use the applySprings method in OrbNode on each
    element in the list.
    =========================*/
  void applySprings(int springLength, float springK) {
OrbNode current = front; // Start from the front of the list
  while (current != null) { // Traverse the list until the end
    current.applySprings(springLength, springK); // Call the display method for the current node
    current = current.next; // Move to the next node
  }
  }//applySprings

  /*===========================
    applyGravity(Orb other, float gConstant)

    Use the getGravity and applyForce methods
    to apply gravity crrectly.
    =========================*/
 void applyGravity(Orb other, float gConstant) {
  OrbNode current = front; // Start from the front of the list
  while (current != null) { // Traverse the list until the end
    // Calculate the gravitational force between the current orb and the central object
    PVector gravityForce = current.getGravity(other, gConstant);
    // Apply the gravitational force to the current orb
    current.applyForce(gravityForce);
    current = current.next; // Move to the next node
  }
}//applySprings

  /*===========================
    run(boolean bounce)

    Call run on each node in the list.
    =========================*/
  void run(boolean bounce) {

  }//applySprings

  /*===========================
    removeFront()

    Remove the element at the front of the list, i.e.
    after this method is run, the former second element
    should now be the first (and so on).
    =========================*/
  void removeFront() {

  }//removeFront


  /*===========================
    getSelected(float x, float y)

    If there is a node at (x, y), return
    a reference to that node.
    Otherwise, return null.

    See isSlected(float x, float y) in
    the Orb class (line 115).
    =========================*/
  OrbNode getSelected(int x, int y) {

    return null;
  }//getSelected

  /*===========================
    removeNode(OrbNode o)

    Removes o from the list. You can
    assume o is an OrbNode in the list.
    You cannot assume anything about the
    position of o in the list.
    =========================*/
  void removeNode(OrbNode o) {
  }
}//OrbList
