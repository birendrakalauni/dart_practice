abstract class Shape {
  double area();
}

class Circle extends Shape {
  final double radius;
  Circle(this.radius);
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  final double length;
  final double width;

  Rectangle(this.length, this.width);

  double area() {
    return length * width;
  }
}

void printArea(Shape shape) {
  print(shape.area());
}

void main() {
  printArea(Circle(5));
  printArea(Rectangle(7, 9));
  
}
