class Calculator {
  static int add(int a, int b) {
    return a + b;
  }
}

void main() {
  print(Calculator.add(17, 19)); //No object is required because the method: static int add(int a, int b) belongs to the class
}
