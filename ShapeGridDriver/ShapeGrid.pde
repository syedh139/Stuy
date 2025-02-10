/*===========================
  
  ShapeGrid (small changes)

  Remove line 59
    type = PATH
    to enable random shape types.

  Uncomment line 68
    grid[r][c] = new RegularGon(np, x, y, shapeSize);
    Once you have created the RegularGon class.
  Uncomment line 71
      grid[r][c] = new Triangle(x, y, shapeSize);
      Once you have created the Triangle class.
  Uncomment line 74
      grid[r][c] = new Square(x, y, shapeSize);
      Once you have created the Sqare class.

  Stores a 2D array of PathShape Objects.

  Each individual PathShape can be a PathShape or
  an object that is a subclass of PathShape.
  =========================*/

class ShapeGrid {

  PathShape[][] grid; //the grid of PathShapes
  int shapeSize; //max size of each shape
  int maxPoints; //max points for each shape


  /*===========================
    Constructor

    Initializes the instance vairables, calls makeShapes()

    You do not need to modify this method.
    =========================*/
  ShapeGrid(int numRows, int numCols, int s, int mp) {
    grid = new PathShape[numRows][numCols];
    maxPoints = mp;
    shapeSize = s;
    makeShapes();
  }//constructor

  /*===========================
    makeShapes()

    Creates a new shape for each element in grid.

    The type of shape should be randomly chosen.
    =========================*/
  void makeShapes() {
    int x = 0;
    int y = 0;
    for (int r=0; r < grid.length; r++) {
      for (int c=0; c < grid[r].length; c++) {
        //println("making shape: " + r + " "  +  c);
      
      int type = int(random(5)); //select a random shape type, uses the constants from ShapeDriver
        
        int np = int(random(3, maxPoints));
        if (type == PATH) {
          grid[r][c] = new PathShape(np, x, y, shapeSize);
        }//pathshape
        else if (type  == POLYGON) {
            grid[r][c] = new Polygon(np, x, y, shapeSize);
          }//polygon
        else if (type  == REGULAR) {
            grid[r][c] = new RegularGon(np, x, y, shapeSize);
        }//regular polygon
        else if (type  == TRIANGLE) {
            grid[r][c] = new Triangle(x, y, shapeSize);
        }//triangle
        else if (type == SQUARE) {
            grid[r][c] = new Square(x, y, shapeSize);
        }//square
        x+= shapeSize;
      }//cols
      y+= shapeSize;
      x = 0;
    }//rows
  }//makePathShapes

  void display() {
    for (int r=0; r < grid.length; r++) {
      for (int c=0; c < grid[r].length; c++) {
        grid[r][c].display();
      }
    }
  }//display

}//ShapeGrid
