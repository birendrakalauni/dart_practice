//Regular

// double calculateDiscount(double price, double discount) {
//   return price - discount;
// }

// Now using arrow function

double calculateDiscount(double price, double discount) => price - discount;

void main() {
  print(calculateDiscount(10000, 770));
  print("");
  print("Final price: Rs. ${calculateDiscount(1000, 100)}");
}
