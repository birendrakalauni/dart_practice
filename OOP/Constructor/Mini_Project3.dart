class Product {
  final int id;
  final String name;
  final double price;
  final String category;
  final bool isAvailable;

  // Constant constructor
  const Product(
    this.id,
    this.name,
    this.price,
    this.category,
    this.isAvailable,
  );

  // Constant named constructor
  const Product.free()
    : id = 780017,
      name = "KitKat",
      price = 00,
      category = "chocolate",
      isAvailable = true;

  // Constant named constructor
  const Product.outOfStock()
    : id = 770021,
      name = "Cetaphil Gentle Skin Cleanser",
      price = 777,
      category = "Face Wash",
      isAvailable = false;
}

void main() {
  const product = Product(
    760027,
    "Google Pixel 10 Pro",
    160000,
    "Mobile",
    true,
  );

  const freeProduct = Product.free();
  const unavailableProduct = Product.outOfStock();

  print("PRODUCT 1");
  print("Item ID: ${product.id}");
  print("Name: ${product.name}");
  print("Price: Rs. ${product.price}");
  print("Category: ${product.category}");
  print("Is Available?: ${product.isAvailable}");
  print("");

  print("PRODUCT 2");
  print("Item ID: ${freeProduct.id}");
  print("Name: ${freeProduct.name}");
  print("Price: Rs. ${freeProduct.price}");
  print("Category: ${freeProduct.category}");
  print("Is Available?: ${freeProduct.isAvailable}");
  print("");

  print("PRODUCT 3");
  print("Item ID: ${unavailableProduct.id}");
  print("Name: ${unavailableProduct.name}");
  print("Price: Rs. ${unavailableProduct.price}");
  print("Category: ${unavailableProduct.category}");
  print("Is Available?: ${unavailableProduct.isAvailable}");
  print("");

}
