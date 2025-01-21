
boolean reachEnd;

class Box {
  int x;
  int y;

  int Score = 0;
  color colour;
  int HOR;
  int VER;
  int[][] Square;
  int WIDTH;
  int HEIGHT;
  int currentRow = 0;
  int currentCol;
  boolean ACT;

  // Constructor
  Box(color colour, int HOR, int VER, boolean ACT) {
    this.colour = colour;
    this.HOR = HOR;
    this.VER = VER;
    this.ACT = ACT;
    Square = new int[VER][HOR];

    // Initialize the grid with 0s
    for (int r = 0; r < Square.length; r++) {
      for (int c = 0; c < Square[r].length; c++) {
        Square[r][c] = 0;
      }
    }

    WIDTH = width / HOR;
    HEIGHT = height / VER;

    // Place a starting rectangle
    int middle = HOR / 2;
    currentCol = floor(random(middle - 2, middle + 2));
  }



  void toGetRandomShape() {


    switch(shapeType) {

    case 1:
      placeRectangle(currentRow, currentCol);
      break;
    case 2:
      placeLine(currentRow, currentCol);
      break;
    case 3:
      placeLShape(currentRow, currentCol);
      break;
    case 4:
      placeTShape(currentRow, currentCol);
      break;
    }
  }

  // Method to place a rectangle in the grid
  void placeRectangle(int y1, int x1) {
    Square[y1][x1] = 1;
    Square[y1 + 1][x1] = 1;
    Square[y1][x1 + 1] = 1;
    Square[y1 + 1][x1 + 1] = 1;
  }

  // Method to clear a rectangle from the grid
  void clearRectangle(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1 + 1][x1] = 0;
    Square[y1][x1 + 1] = 0;
    Square[y1 + 1][x1 + 1] = 0;
  }
















  void placeLine(int y1, int x1) {
    Square[y1][x1] = 1;
    Square[y1 + 1][x1] = 1;
    Square[y1 + 2][x1] = 1;
    Square[y1 + 3][x1] = 1;
  }


  void clearLine(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1 + 1][x1] = 0;
    Square[y1 + 2][x1] = 0;
    Square[y1 + 3][x1] = 0;
  }

  void placeLine2(int y1, int x1) {
    Square[y1][x1] = 1;
    Square[y1][x1 + 1] = 1;
    Square[y1][x1 + 2] = 1;
    Square[y1][x1 + 3] = 1;
  }


  void clearLine2(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1][x1 + 1] = 0;
    Square[y1][x1 + 2] = 0;
    Square[y1][x1 + 3] = 0;
  }












  void placeLShape(int y1, int x1) {
    Square[y1][x1] = 1;
    Square[y1 + 1][x1] = 1;
    Square[y1 + 2][x1] = 1;
    Square[y1 + 2][x1 + 1] = 1;
  }

  void clearLShape(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1 + 1][x1] = 0;
    Square[y1 + 2][x1] = 0;
    Square[y1 + 2][x1 + 1] = 0;
  }

  void placeLShape2(int y1, int x1) {
    Square[y1][x1] = 1;
    Square[y1][x1 + 1] = 1;
    Square[y1][x1 + 2] = 1;
    Square[y1 - 1][x1 + 2] = 1;
  }

  void clearLShape2(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1][x1 + 1] = 0;
    Square[y1][x1 + 2] = 0;
    Square[y1 - 1][x1 + 2] = 0;
  }


  void placeLShape3(int y1, int x1) {
    Square[y1][x1] = 1;
    Square[y1 - 1][x1] = 1;
    Square[y1 - 2][x1] = 1;
    Square[y1 - 2][x1 - 1] = 1;
  }

  void clearLShape3(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1 - 1][x1] = 0;
    Square[y1 - 2][x1] = 0;
    Square[y1 - 2][x1 - 1] = 0;
  }

  void placeLShape4(int y1, int x1) {
    Square[y1][x1] = 1;
    Square[y1][x1 - 1] = 1;
    Square[y1][x1 - 2] = 1;
    Square[y1 - 1][x1 - 2] = 1;
  }

  void clearLShape4(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1][x1 - 1] = 0;
    Square[y1][x1 - 2] = 0;
    Square[y1 - 1][x1 - 2] = 0;
  }










  void placeTShape(int y1, int x1) {
    Square[y1][x1] = 1;
    Square[y1][x1 - 1] = 1;
    Square[y1][x1 + 1] = 1;
    Square[y1 + 1][x1] = 1;
  }




  void clearTShape(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1][x1 - 1] = 0;
    Square[y1][x1 + 1] = 0;
    Square[y1 + 1][x1] = 0;
  }



  void placeTShape2(int y1, int x1) {
    Square[y1][x1] = 1;
    Square[y1 - 1][x1] = 1;
    Square[y1 - 2][x1] = 1;
    Square[y1 - 1][x1 + 1] = 1;
  }



  void clearTShape2(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1 - 1][x1] = 0;
    Square[y1 - 2][x1] = 0;
    Square[y1 - 1][x1 + 1] = 0;
  }



  void placeTShape3(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1][x1 - 1] = 0;
    Square[y1][x1 + 1] = 0;
    Square[y1 - 1][x1] = 0;
  }



  void clearTShape3(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1 + 1][x1 - 1] = 0;
    Square[y1 + 1][x1] = 0;
    Square[y1 + 1][x1 + 1] = 0;
  }


  void placeTShape4(int y1, int x1) {
    Square[y1][x1] = 1;
    Square[y1 + 1][x1] = 1;
    Square[y1 - 1][x1] = 1;
    Square[y1][x1 - 1] = 1;
  }



  void clearTShape4(int y1, int x1) {
    Square[y1][x1] = 0;
    Square[y1 + 1][x1] = 0;
    Square[y1 - 1][x1] = 0;
    Square[y1][x1 - 1] = 0;
  }







  // Method to move the rectangle down
  void moveDown() {
    y = currentRow;

    switch(shapeType) {

    case 1:
      if (currentRow < VER - 2) {
        clearRectangle(currentRow, currentCol);
        currentRow++;
        placeRectangle(currentRow, currentCol);
      }
      break;

    case 2:
      if (currentRow < VER - 4) {
        clearLine(currentRow, currentCol);
        currentRow++;
        placeLine(currentRow, currentCol);
      }
      break;

    case 3:
      if (currentRow < VER - 3) {
        clearLShape(currentRow, currentCol);
        currentRow++;
        placeLShape(currentRow, currentCol);
      }
      break;

    case 4:
      if (currentRow < VER - 2) {
        clearTShape(currentRow, currentCol);
        currentRow++;
        placeTShape(currentRow, currentCol);
      }
      break;
    }
  }



  // Method to move the shape left
  void moveLeft() {
    x = currentCol;
    if (currentCol > 0) {
      switch (shapeType) {

        //They are not that simple. Have to do some BS Shit for for Line
      case 1:
        clearRectangle(currentRow, currentCol);
        currentCol--;
        placeRectangle(currentRow, currentCol);
        break;
      case 2:
        clearLine(currentRow, currentCol);
        currentCol--;
        placeLine(currentRow, currentCol);
        break;
      case 3:
        clearLShape(currentRow, currentCol);
        currentCol--;
        placeLShape(currentRow, currentCol);
        break;
      case 4:
        clearTShape(currentRow, currentCol);
        currentCol--;
        placeTShape(currentRow, currentCol);
        break;
      }
    }
  }

  // Method to move the shape right
  void moveRight() {
    x = currentCol;
    if (currentCol < HOR - 2) {
      switch (shapeType) {
      case 1:
        clearRectangle(currentRow, currentCol);
        currentCol++;
        placeRectangle(currentRow, currentCol);
        break;
      case 2:
        clearLine(currentRow, currentCol);
        currentCol++;
        placeLine(currentRow, currentCol);
        break;
      case 3:
        clearLShape(currentRow, currentCol);
        currentCol++;
        placeLShape(currentRow, currentCol);
        break;
      case 4:
        clearTShape(currentRow, currentCol);
        currentCol++;
        placeTShape(currentRow, currentCol);
        break;
      }
    }
  }



  void shifter(int shapeType) {

    switch(shapeType) {

    case 2:

      for (int counter = 1; counter <= 2; ) {
        if (counter == 1) {
          clearLine(currentRow, currentCol);
          currentRow++;
          placeLine(currentRow, currentCol);
        }

        if (counter == 2) {
          clearLine2(currentRow, currentCol);
          currentRow++;
          placeLine2(currentRow, currentCol);
          counter = 1;
        }
      }



    case 3:

      for (int counter = 1; counter <= 4; ) {
        if (counter == 1) {
          clearLShape(currentRow, currentCol);
          currentRow++;
          placeLShape(currentRow, currentCol);
        }

        if (counter == 2) {
          clearLShape2(currentRow, currentCol);
          currentRow++;
          placeLShape2(currentRow, currentCol);
        }

        if (counter == 3) {
          clearLShape3(currentRow, currentCol);
          currentRow++;
          placeLShape3(currentRow, currentCol);
        }

        if (counter == 4) {
          clearLShape4(currentRow, currentCol);
          currentRow++;
          placeLShape4(currentRow, currentCol);
          counter = 1;
        }
      }

    case 4:
      for (int counter = 1; counter <= 4; ) {
        if (counter == 1) {
          clearTShape(currentRow, currentCol);
          currentRow++;
          placeTShape(currentRow, currentCol);
        }

        if (counter == 2) {
          clearTShape2(currentRow, currentCol);
          currentRow++;
          placeTShape2(currentRow, currentCol);
        }

        if (counter == 3) {
          clearTShape3(currentRow, currentCol);
          currentRow++;
          placeTShape3(currentRow, currentCol);
        }

        if (counter == 4) {
          clearTShape4(currentRow, currentCol);
          currentRow++;
          placeTShape4(currentRow, currentCol);
          counter = 1;
        }
      }
    }
  }


  // Method to get a random shape
  void getRandomShape() {
    shapeType = int(random(1, 5)); // Random shape between 1 and 4
  }







  // Display method
  void display() {
    for (int r = 0; r < Square.length; r++) {
      for (int c = 0; c < Square[r].length; c++) {
        if (Square[r][c] == 1) {
          fill(colour);
          rect(c * WIDTH, r * HEIGHT, WIDTH, HEIGHT);
        }
      }
    }
  }
  
boolean hitSurface(int shapeType) {
  // Assuming the board height is 20 units (change this based on your game size)
  final int BOARD_HEIGHT = VER;

  // Check the bottom-most part of the shape based on the shape type
  switch (shapeType) {
    case 1: // Rectangle shape
      // For rectangle, check if the bottom-most row of the shape has reached the bottom
      if (currentRow >= BOARD_HEIGHT - 1) {
        ACTIVE = false; // Stop the shape from moving down
        return true;
      }
      break;

    case 2: // Line shape
      // For line shape, check if the bottom-most part has reached the board height
      if (currentRow >= BOARD_HEIGHT - 4) {
        ACTIVE = false; // Stop the shape from moving down
        return true;
      }
      break;

    case 3: // L-shape
      // For L-shape, check if the bottom-most part has reached the board height
      if (currentRow >= BOARD_HEIGHT - 3) {
        ACTIVE = false; // Stop the shape from moving down
        return true;
      }
      break;

    case 4: // T-shape
      // For T-shape, check if the bottom-most part has reached the board height
      if (currentRow >= BOARD_HEIGHT - 2) {
        ACTIVE = false; // Stop the shape from moving down
        return true;
      }
      break;
  }

  return false; // No collision detected
}




boolean checkCollision(int shapeType) {
  // Check if the shape will collide with the ground or other blocks
  final int BOARD_WIDTH = 10; // Number of columns in the grid
  final int BOARD_HEIGHT = 20; // Number of rows in the grid

  // Depending on the shapeType, we need to adjust the collision check logic
  switch (shapeType) {
    case 1: // Rectangle shape
      for (int i = 0; i < Square.length; i++) {
        // Check if the bottom-most part of the rectangle has reached the board's bottom
        if (Square[i][currentCol] == 1 || currentRow >= BOARD_HEIGHT - 1) {
          return true; // Stop the shape from moving down
        }
      }
      break;

    case 2: // Line shape
      for (int i = 0; i < Square.length; i++) {
        // Check if the line reaches the bottom or collides with any other block
        if (Square[i][currentCol] == 1 || currentRow >= BOARD_HEIGHT - 4) {
          return true; // Stop the shape from moving down
        }
      }
      break;

    case 3: // L-shape
      for (int i = 0; i < Square.length; i++) {
        if (Square[i][currentCol] == 1 || currentRow >= BOARD_HEIGHT - 3) {
          return true; // Stop the shape from moving down
        }
      }
      break;

    case 4: // T-shape
      for (int i = 0; i < Square.length; i++) {
        if (Square[i][currentCol] == 1 || currentRow >= BOARD_HEIGHT - 2) {
          return true; // Stop the shape from moving down
        }
      }
      break;
  }
  return false; // No collision
}








}
