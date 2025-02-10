class PathShape {
  ArrayList<PVector> points;
  int numPoints;
  PVector corner;
  int shapeSize;
  color inside;
  float area;
  PVector centroid;
  PVector center;

  /* ===================================
  Full Parameter Constructor
  =================================== */
  PathShape(int np, int cx, int cy, int ss) {
    numPoints = np;
    corner = new PVector(cx, cy);
    shapeSize = ss;
    inside = color(255);
    points = new ArrayList<PVector>();
    area = 0;
    makeRandomShape();
    setCenter(); 
    setArea();
    setCentroid();
    setColor(); // Call setColor() here
  }

  /* ===================================
  Numpoints Constructor
  =================================== */
  PathShape(int np) {
    this(np, 0, 0, width);
  }

  /* ===================================
  Default Constructor
  =================================== */
  PathShape() {
    this(int(random(3, 20)));
  }

  /* ===================================
  isValidShape (NEW)
  =================================== */
  boolean isValidShape() {
    return area != 0; // Shape is valid if area is not zero
  }

  /* ===================================
  setColor (NEW)
  =================================== */
  void setColor() {
    if (isValidShape()) {
      inside = color(0, 255, 255); // Cyan for valid shapes
    } else {
      inside = color(255, 0, 255); // Magenta for invalid shapes
    }
  }

  /* ===================================
  String toString (NEW)
  =================================== */
  String toString() {
    return "PathShape with " + numPoints + " points";
  }

  /* ===================================
  display() (MODIFY)
  =================================== */
  void display() {
    fill(inside);
    beginShape();
    for (int p = 0; p < numPoints; p++) {
      vertex(points.get(p).x, points.get(p).y);
    }
    endShape(CLOSE);

    // Draw the centroid if the shape is valid
    if (isValidShape()) {
      fill(255, 255, 0); // Yellow for centroid
      ellipse(centroid.x, centroid.y, 10, 10);
    }

    // Draw the center of the bounding box
    fill(0, 255, 0); // Green for center
    ellipse(center.x, center.y, 10, 10);

    // Display the result of toString using text()
    fill(255); // White text
    textSize(15);
    text(toString(), corner.x, corner.y - 20); // Display text above the shape
  }

  /* ===================================
  makeRandomShape (no changes)
  =================================== */
  void makeRandomShape() {
    for (int p = 0; p < numPoints; p++) {
      points.add(makeRandomPoint());
    }
  }

  /* ===================================
  makeRandomPoint (no changes)
  =================================== */
  PVector makeRandomPoint() {
    PVector newPoint = new PVector();
    newPoint.x = int(random(shapeSize)) + corner.x;
    newPoint.y = int(random(shapeSize)) + corner.y;
    return newPoint;
  }

  /* ===================================
  setArea (no changes)
  =================================== */
  void setArea() {
    area = 0;
    for (int p = 0; p < numPoints; p++) {
      PVector p0 = points.get(p);
      PVector p1;
      if (p < numPoints - 1) {
        p1 = points.get(p + 1);
      } else {
        p1 = points.get(0);
      }
      area += (p0.x * p1.y) - (p1.x * p0.y);
    }
    area = area / 2;
  }

  /* ===================================
  setCentroid (no changes)
  =================================== */
  void setCentroid() {
    float sumX = 0;
    float sumY = 0;
    for (int i = 0; i < numPoints; i++) {
      PVector p0 = points.get(i);
      PVector p1;
      if (i == numPoints - 1) {
        p1 = points.get(0);
      } else {
        p1 = points.get(i + 1);
      }
      sumX += (p0.x + p1.x) * ((p0.x * p1.y) - (p1.x * p0.y));
      sumY += (p0.y + p1.y) * ((p0.x * p1.y) - (p1.x * p0.y));
    }
    centroid = new PVector(sumX / (6 * area), sumY / (6 * area));
  }

  /* ===================================
  setCenter (NEW)
  =================================== */
  void setCenter() {
    float minX = Float.POSITIVE_INFINITY;
    float minY = Float.POSITIVE_INFINITY;
    float maxX = Float.NEGATIVE_INFINITY;
    float maxY = Float.NEGATIVE_INFINITY;

    // Find the min and max x and y values
    for (PVector point : points) {
      if (point.x < minX) minX = point.x;
      if (point.y < minY) minY = point.y;
      if (point.x > maxX) maxX = point.x;
      if (point.y > maxY) maxY = point.y;
    }

    // Calculate the center of the bounding box
    center = new PVector((minX + maxX) / 2, (minY + maxY) / 2);
  }
}
