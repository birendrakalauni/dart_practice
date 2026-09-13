class Calculator {
  int _add(int a, int b) {
    return a + b;
  }

  int calculate(int a, int b) {
    return _add(a, b);
  }
}

void main() {
  final calculator = Calculator();
  print(calculator.calculate(5, 17));
}
