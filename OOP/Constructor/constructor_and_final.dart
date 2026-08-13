// This is particularly important in professional Dart code.

class Product {
  final String name;
  final double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});
}

void main() {
  // Once the object is created:
  final product = Product(name: "Face Wash", price: 700, quantity: 1);

  final pd = Product(name: "Tooth Paste", price: 350, quantity: 2);
  // you cannot do: product.name = "Tooth paste";
  // This gives you immutable object state..

  print("Product Name: ${product.name}");
  print("Price: Rs. ${product.price}");
  print("Quantity: ${product.quantity}");

  print("Product Name: ${pd.name}");
  print("Price: Rs. ${pd.price}");
  print("Quantity: ${pd.quantity = 3}"); // Here you can use pd.quantity =3, because quantity field is not final
}
