class Shape {
  double get area {
    return 0;
  }
}

class Square extends Shape {
  final double side;

  Square(this.side);

  double get area {
    return side * side;
  }
}

void main() {
  final square = Square(7);
  print("Area of square: ${square.area} ");
}
