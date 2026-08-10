// Practical Example — Product Calculator

double calculateSubTotal({required double price, required int quantity}) =>
    quantity * price;

double calculateDiscount(double subtotal) {
  if (subtotal >= 5000) {
    return subtotal * 0.10;
  } else {
    return 0;
  }
}

double calculateFinalPrice(double subtotal, double discount) =>
    subtotal - discount;

void printReport({
  required String product,
  required double subtotal,
  required double discount,
  required double total,
}) {
  print("=================================");
  print("           RECEIPT");
  print("=================================");
  print("");
  print("Product Name: $product");
  print("Subtotal Amount: Rs. $subtotal");
  print("Discount Amount: Rs. $discount");
  print("Total Amount: Rs. $total");
  print("");
  print("          THANK YOU");
  print("=================================");
}

void main() {
  final subtotal = calculateSubTotal(price: 7777, quantity: 2);
  final discount = calculateDiscount(subtotal);

  final total = calculateFinalPrice(subtotal, discount);

  printReport(
    product: "Ear Buds",
    subtotal: subtotal,
    discount: discount,
    total: total,
  );
}
