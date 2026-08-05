//Online Shopping
void main() {
  List<String> products = ["Laptop", "Mobile", "Out of Stock", "Keyboard"];

  for (String product in products) // for-in loop
  {
    if (product == "Out of Stock") {
      continue;
    }
    print(product);
  }
  print("Here unavailable product is skipped.");
}
