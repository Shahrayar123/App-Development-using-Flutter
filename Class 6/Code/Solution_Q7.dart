// Q7- Create a class named 'Shape' with a method to print "This is shape".
//  Then create two other classes named 'Rectangle', 'Circle' inheriting the
//  Shape class, both having a method to print "This is rectangular shape" and "This is circular shape" respectively.
//  Create a subclass 'Square' of 'Rectangle' having a method to print "Square is a rectangle".
//  Now call the method of 'Shape' and 'Rectangle' class by the object of 'Square' class.

class Shape {
  void printShape() {
    print("This is simple Shape");
  }
}

class Rectangle extends Shape {
  void printRectangle() {
    print("This is rectangular shape");
  }
}

class Circle extends Shape {
  void printCircle() {
    print("This is circular shape");
  }
}

class Square extends Rectangle {
  void printSquare() {
    print("Square is a rectangle");
  }
}

void main() {
  var sq = Square();
  sq.printRectangle();

  sq.printShape();
}
