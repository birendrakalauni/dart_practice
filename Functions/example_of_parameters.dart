// Online Food Order

void orderFood({required String food, int quantity = 1, homeDelivery = true}) {
  print("Order Food");
  print("==============");
  print("Food : $food");
  print("Quantity: $quantity");
  print("Home Delivery: $homeDelivery");
  print("");
}

void main() {
  orderFood(food: "Momo");

  orderFood(food: "Pizza", quantity: 2, homeDelivery: false);
}
