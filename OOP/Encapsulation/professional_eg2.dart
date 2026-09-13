// Let's create a simple shopping cart.

class ShoppingCart {
  final List<String> _items = [];

  List<String> get items => List.unmodifiable(_items);

  void addItem(String item) {
    if (item.trim().isEmpty) {
      return;
    }
    _items.add(item);
  }

  void removeItem(String item) {
    _items.remove(item);
  }

  int get itemCount => _items.length;
}

void main() {
  final cart = ShoppingCart();
  cart.addItem("Laptop");
  cart.addItem('Mouse');
  cart.addItem("Keyboard");

  print("---- List of Items ----");
  print(cart.items);
  print("Total Items: ${cart.itemCount}");
  print("");

  cart.removeItem('Mouse');
  print("---- Remaining List of Items ----");
  print(cart.items);
  print("Remaining Items: ${cart.itemCount}");
  print("");
}
