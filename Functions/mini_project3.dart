// Electricity Bill Calculator

double calculateBill(int units) {
  double bill = units * 8.0;

  if (units > 100) {
    bill = bill + 100;
  }
  return bill;
}

void main() {
  int units = 150;

  double totalBill = calculateBill(units);
  print("Electricity Bill");
  print("=================");
  print("Total Units: $units");
  print("Cost per Unit: Rs. 8");
  print("Total Bill: $totalBill");
  print("");
}
