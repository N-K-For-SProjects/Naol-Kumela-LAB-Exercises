/**
 * Exercise 3: Define a Shape abstract class with an abstract method calculateArea(). 
 * Create subclasses like Circle and Square that inherit from Shape and implement the calculateArea() method specific to their shapes.
 */

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;
  Square(this.side);

  double calculateArea() {
    return side * side;
  }
}

void main() {
  Circle circle = Circle(5.0);
  print('Area of Circle: ${circle.calculateArea()}');

  Square square = Square(4.0);
  print('Area of Square: ${square.calculateArea()}');
}
