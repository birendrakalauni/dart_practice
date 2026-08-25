class ShoppingCart {
  final List<String> _items = [];
  double _total = 0;

  void addItem(String itemName, double price) {
    if (price <= 0) {
      print("Invalid price. Price must be greater than 0.");
      return;
    }
    _items.add(itemName);
    _total += price;

    print("$itemName added to cart.");
  }

  void removeItem(String itemName, double price) {
    if (!_items.contains(itemName)) {
      print("$itemName is not in the cart.");
      return;
    }
    if (price <= 0) {
      print("Invalid price. Price must be greater than 0.");
      return;
    }
    _items.remove(itemName);
    _total -= price;
  }

  void clearCart() {
    _items.clear();
    _total = 0;
    print("Cart Cleared!");
  }

  double getTotal() {
    return _total;
  }
}

void main() {
  ShoppingCart cart = ShoppingCart();

  //Add items
  cart.addItem("Face Wash", 700);
  cart.addItem("Shampoo", 450);
  cart.addItem("Toothpaste", 200);
  print("");
  print("Current Total: Rs. ${cart.getTotal()}");
  print("");

  //Remove an item
  cart.removeItem("Shampoo", 450);
  print("Current Total: Rs. ${cart.getTotal()}");
  cart.removeItem("KitKat", 100);
  print("");

  // Clear the cart
  cart.clearCart();
  print("Current Total: Rs. ${cart.getTotal()}");
  print("");
}
