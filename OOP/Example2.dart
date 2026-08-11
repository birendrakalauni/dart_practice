// Real-World Flutter Example
// Suppose your application receives product data from an API.

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

void main() {
  // final product = Product(
  //   name: "Laptop",
  //   price: 77000,
  // );

  final products = <Product>[
    Product(name: "Laptop", price: 75000),
    Product(name: "Mouse", price: 1700),
  ];
  //This a pattern use constantly in real Flutter applications.

  for (Product product in products) {
    print("Name: ${product.name}");
    print("Price: Rs. ${product.price}");
    print("");
  }
}
