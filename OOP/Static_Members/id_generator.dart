class Product {
  static int _nextId = 101;

  final int id;
  final String name;

  Product(this.name) : id = _nextId++;
}

void main() {
  final p1 = Product("Laptop");
  final p2 = Product("Phone");
  final p3 = Product("Mouse");
  final p4 = Product("Keyboard");

  print(p1.id);
  print(p2.id);
  print(p3.id);
  print(p4.id);
}
