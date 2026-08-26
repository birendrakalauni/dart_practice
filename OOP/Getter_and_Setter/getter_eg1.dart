class ShoppingCart {
  final List<double> _prices = [];

  void addProduct(double price) {
    if (price > 0) {
      _prices.add(price);
    }
  }

  double get total {
    double result = 0;

    for (double price in _prices) {
      result += price;
    }
    return result;
  }

  bool get isEmpty => _prices.isEmpty;

  int get itemCount => _prices.length;
}

void main() {
  final cart = ShoppingCart();

  cart.addProduct(2000);
  cart.addProduct(3000);
  cart.addProduct(2500);

  print("Total : Rs. ${cart.total}");
  print("Total Item: ${cart.itemCount}");
  print("Is Empty?: ${cart.isEmpty}");
}
