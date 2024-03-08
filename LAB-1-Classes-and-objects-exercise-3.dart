/**
 * Exercise 3: Implement a Rectangle class with constructor arguments for width and height. 
 * Create methods to calculate area and perimeter.
 */

class Rectangle {
  double width;
  double height;

  Rectangle({required this.width, required this.height});

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle rectangle = Rectangle(width: 5, height: 10);

  print("Area: ${rectangle.area()}");
  print("Perimeter: ${rectangle.perimeter()}");
}
