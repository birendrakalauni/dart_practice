// Shopping Cart

double totalPrice(double price, int quantity) {
  return price * quantity;
}

void main() {
  double total = totalPrice(777, 10);
  print("Total : Rs. $total");
}
