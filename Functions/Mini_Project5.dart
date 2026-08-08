// 🛒 Shopping Price Calculator

double calculateSubtotal({required double price, required int quantity}) =>
    price * quantity;

double calculateDiscount(double subtotal) => subtotal * 0.10;

double calculateFinalPrice(double subtotal, double discount) =>
    subtotal - discount;

void main() {
  String product = "Face Wash";
  double price = 700.0;
  int quantity = 2;

  double subtotal = calculateSubtotal(price: price, quantity: quantity);

  double discount = calculateDiscount(subtotal);

  double finalPrice = calculateFinalPrice(subtotal, discount);

  print("-----------------------------");
  print("Product: $product");
  print("Price: Rs. $price");
  print("Quantity: $quantity");
  print("Discount: Rs. $discount");
  print("Final Price: rs. $finalPrice");
  print("");
}
