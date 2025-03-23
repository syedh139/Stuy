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
    front = null;// Empties the OrbNode
  }//constructor

  /*===========================
    addFront(OrbNode o)

    Insert o to the beginning of the list.
    =========================*/
void addFront(OrbNode o) {
  if (o != null) {
    o.next = front; // The new node becomes front
    front = o;      // front becomes that node
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
  
  front = null;

  for (int i = 0; i < n; i++) {//uses a for loop to create new nodes based on center
    OrbNode newNode;

    if (ordered) {//see if it is order. If it is true then it makes y value same and x values different
      float x = (width / 2) - (n * SPRING_LENGTH / 2) + i * SPRING_LENGTH; // Different X CORD
      float y = height / 2; // Same Y CORD
      newNode = new OrbNode(x, y, random(MIN_SIZE, MAX_SIZE), random(MIN_MASS, MAX_MASS));
    } else {//Otherwise
      
      newNode = new OrbNode(); //Uses the default costrcutor to make random CORD
    }

    addFront(newNode); // Add the new node to the front
  }
}//populate

  /*===========================
    display(int springLength)

    Display all the nodes in the list using
    the display method defined in the OrbNode class.
    =========================*/

void display() {
  OrbNode current = front; // Diclares the front the current OrbNode
  while (current != null) { // Goes through the nodes
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
  while (current != null) { // Goes through the list
    current.applySprings(springLength, springK); //same as display but calls applysprings with appropiate perameters
    current = current.next; //same as display
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
    //use a method to get the gravity force
    current.applyForce(gravityForce);//Apply the gravity force using Apply force
    current = current.next; // Move to the next node
  }
}//applySprings

  /*===========================
    run(boolean bounce)

    Call run on each node in the list.
    =========================*/
void run(boolean bounce) {
  OrbNode current = front; // Start from the front of the list
  while (current != null) { // Gpes through the list
   // println("Moving node at: (" + current.center.x + ", " + current.center.y + ")");
    current.move(bounce); // Call the move method 
    current = current.next; // Move to the next node
  }
}//applySprings

  /*===========================
    removeFront()

    Remove the element at the front of the list, i.e.
    after this method is run, the former second element
    should now be the first (and so on).
    =========================*/
void removeFront() {
  if (front != null) { // Make sures that the list is not empty
    front = front.next; // Makes front the second node
  }
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
  OrbNode current = front; // Start from the front of the list
  while (current != null) { // Runs through the list
    if (current.isSelected(x, y)) { // Makes sure current node is selected
      return current; // Return the node if and only if it is selected
    }
    current = current.next; // Move to the next node
  }
  return null; // Return null if no node is selected
}//getSelected

  /*===========================
    removeNode(OrbNode o)

    Removes o from the list. You can
    assume o is an OrbNode in the list.
    You cannot assume anything about the
    position of o in the list.
    =========================*/
void removeNode(OrbNode o) {
  if (o == null || front == null) {
    return; // If the node is null or the list is empty, do nothing
  }

  if (front == o) {
    // If the node to remove is the front node
    front = front.next; // Update front to the next node
    return;
  }

  // Find the node before o
  OrbNode current = front;
  while (current != null && current.next != o) {
    current = current.next;
  }

  if (current != null) {
    current.next = o.next;
  }
}
}//OrbList
