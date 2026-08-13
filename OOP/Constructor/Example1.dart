class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity) {}
}

void main() {
  final product = Product("Face Wash ", 700, 2);
  print("Product Name: ${product.name}");
  print("Price: Rs. ${product.price}");
  print("Quantity: ${product.quantity}");
}
