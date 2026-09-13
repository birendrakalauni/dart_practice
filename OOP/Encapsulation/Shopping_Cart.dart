class Product {
  final String _name;
  final double _price;

  Product(this._name, this._price);

  String get name => _name;
  double get price => _price;
}

class ShoppingCart {
  final List<Product> _products = [];

  List<Product> get products => List.unmodifiable(_products);

  void addProduct(Product product) {
    _products.add(product);
  }

  void removeProduct(Product product) {
    _products.remove(product);
  }

  double get totalPrice {
    double total = 0;

    for (final product in _products) {
      total += product.price;
    }
    return total;
  }
}

void main() {
  final cart = ShoppingCart();

  cart.addProduct(Product("Laptop", 80000));
  cart.addProduct(Product("Mouse", 1500));
  cart.addProduct(Product("Keyboard", 2500));
  print("List of Products..........");
  // print(cart.products);
  for (final product in cart.products) {
    print("${product.name} : Rs. ${product.price}");
  }
  print('Total Price: ${cart.totalPrice}');
  print("");
}
