/*===========================
  Triangle
  A Triangle is a Polygon that must have exactly 3 sides.

  The centroid of a Triangle can be found by finding the
  average of the coordinates of its vertices. (i.e. the
  x coordinate of the centroid is the average of the
  x coordinates of each vertex...)

  A valid Triangle is one whose area is greater than 10.

  toString() should just return "Triangle"

  Write the entire Triangle class, only overriding the
  necessary methods to create a Triangle as described above,
  and using super appropriately.

  Read the comment at the top of ShapeGrid for an example
  of the requred constructor (line 12)
  =========================*/
  
  class Triangle extends Polygon{
    
    Triangle ( int cx, int cy, int ss){
    super(3, cx, cy, ss);
    
  }
  }
