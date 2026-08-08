// Online Shopping Checkout

void checkout({
  required String product,
  required double price,
  int quantity = 1,
  int discountPercent = 0,
}) {
  double discount = price * (discountPercent / 100);
  double total = (price * quantity) - discount;
  print("Online Shopping Checkout");
  print("========================");
  print("");
  print("Product: $product");
  print("Price: Rs. $price");
  print("Quantity: $quantity");
  print("Discount: $discountPercent%");
  print("Discount Amount: Rs. $discount");
  print("Total: Rs. $total");
  print("");
}

void main() {
  checkout(product: "Laptop", price: 90000);
  checkout(
    product: "Acer Laptop",
    price: 110000,
    quantity: 2,
    discountPercent: 15,
  );
}
