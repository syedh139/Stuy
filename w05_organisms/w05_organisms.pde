Tank tank;
PImage fish;
PImage turtle;
PImage plant;
int selectedOrganism = -1; // -1 = none, 0 = fish, 1 = turtle, 2 = plant
int littleBox = 50;
int size = littleBox/2;
void setup() {
  size(600, 600);
  tank = new Tank(height * 0.7); 
  fish = loadImage("FISH.png");
  turtle = loadImage("—Pngtree—cute sea turtle illustration vector_5290760.png");
  plant = loadImage("PLANT.png");
  
  for (int i = 0; i < 50; i++) {
    float x = random(width);
    float y = random(height);
    if (random(1) < 0.3) {
      tank.addOrganism(new Fish(20, x, y, 100, tank, random(1, 3)));
    } else if (random(1) < 0.6) {
      tank.addOrganism(new Turtle(20, x, y, 100, tank, random(1, 3)));
    } else {
      float plantX = random(width);
      float plantY = random(tank.waterLevel, height); 
      tank.addOrganism(new Plant(10, plantX, plantY, 100, tank, 0.1, 50));
    }
  }
}

void draw() {
  background(255);

  
  fill(0, 84, 119); 
  rect(0, 0, width, tank.waterLevel);
  fill(139, 69, 19); 
  rect(0, tank.waterLevel, width, height - tank.waterLevel);

fill (128, 0, 128);
    rect((0), (0), littleBox, littleBox );

  tank.update();
  
  
    if (selectedOrganism == 0) {
            
            
            imageMode(CENTER);
    image(fish, (0 + littleBox/2), (0 + littleBox/2), size, size);
    
  }
  
  if (selectedOrganism == 1){
    
              imageMode(CENTER);
    image(turtle, (0 + littleBox/2), (0 + littleBox/2), size, size);
    
    
  }
  
  if (selectedOrganism == 2){
    
imageMode(CENTER);
    image(plant, (0 + littleBox/2), (0 + littleBox/2), size, size);
    
  }
}

void keyPressed() {
  if (key == '1') {
    
    selectedOrganism = 0; 

  } else if (key == '2') {
    selectedOrganism = 1; 
   
  } else if (key == '3') {
    selectedOrganism = 2; 
   
  }
}

void mousePressed() {
  float x = mouseX;
  float y = mouseY;

  if (selectedOrganism == 0) {
   
    if (tank.isInWater(y)) {
      tank.addOrganism(new Fish(20, x, y, 100, tank, random(1, 3)));

    } else {
     
    }
  } else if (selectedOrganism == 1) {

    tank.addOrganism(new Turtle(20, x, y, 100, tank, random(1, 3)));

  } else if (selectedOrganism == 2) {

    if (tank.isOnFloor(y)) {
      tank.addOrganism(new Plant(10, x, y, 100, tank, 0.1, 50));
    } else {
     
    }
  } else {
   
  }
}
