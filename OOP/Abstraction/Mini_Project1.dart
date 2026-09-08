// Mini Project — E-Commerce Data Layer

abstract class ProductRepository {
  Future<List<String>> getProducts();
}

// API implementation
class ApiProductRepository implements ProductRepository {
  Future<List<String>> getProducts() async {
    return ["Laptop", "Phone", "Headphones"];
  }
}

// Local Implementation
class LocalProductRepository implements ProductRepository {
  Future<List<String>> getProducts() async {
    return ["Cached Laptop", "Cached Phone"];
  }
}

//Business Logic

Future<void> displayProducts(ProductRepository repository) async {
  //imp. part
  final products = await repository.getProducts();

  for (final product in products) {
    print(product);
  }
}

void main() async {
  print("====== API Data ======");
  await displayProducts(ApiProductRepository());
  print("");
  print("====== Local Data ======");
  await displayProducts(LocalProductRepository());
}
