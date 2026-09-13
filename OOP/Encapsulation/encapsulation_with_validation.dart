//This is one of the most useful practical patterns.

class Product {
  String _name;
  double _price;

  Product(this._name, this._price);

  String get name => _name;

  set name(String value) {
    if (value.trim().isNotEmpty) {
      _name = value;
    }
  }

  double get price => _price;

  set price(double value) {
    if (value >= 0) {
      _price = value;
    }
  }
}

void main() {
  final product = Product("Laptop", 80000);
  print("Product Name  : ${product.name}");
  print("Product Price : Rs. ${product.price}");
}
