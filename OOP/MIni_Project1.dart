// Mini Project — Product Management

class Product {
  String name = "";
  double price = 0;
  int quantity = 0;

  double calculateTotal() => price * quantity;
}

void main() {
  Product p1 = Product();
  Product p2 = Product();
  Product p3 = Product();

  p1.name = "Face Wash";
  p1.price = 700;
  p1.quantity = 2;

  p2.name = "Shampoo";
  p2.price = 450;
  p2.quantity = 3;

  p3.name = "Toothpaste";
  p3.price = 200;
  p3.quantity = 2;

  double total =
      p1.calculateTotal() + p2.calculateTotal() + p3.calculateTotal();

  print("Product 1: ${p1.name}");
  print("Price: Rs. ${p1.price}");
  print("Quantity: ${p1.quantity}");
  print("Total: Rs. ${p1.calculateTotal()}");
  print("");
  print("Product 2: ${p2.name}");
  print("Price: Rs. ${p2.price}");
  print("Quantity: ${p2.quantity}");
  print("Total: Rs. ${p2.calculateTotal()}");
  print("");
  print("Product 3: ${p3.name}");
  print("Price: Rs. ${p3.price}");
  print("Quantity: ${p3.quantity}");
  print("Total: Rs. ${p3.calculateTotal()}");
  print("");
  print("Overall Shopping Total: Rs. $total");
  print("");
}
