// payment gateway function

void processPayment({
  required String customerName,
  required double amount,
  required String paymentMethod,
  String? transactionNote,
  bool saveCard = false,
}) {
  print("---------------------------");
  print("Payment Processing");
  print("Customer: $customerName");
  print("Amount: Rs.$amount");
  print("Payment Method: $paymentMethod");
  print("Note: ${transactionNote ?? "No note"}");
  print("Save Card: $saveCard");
  print("");
}

void main() {
  processPayment(customerName: "Biren", amount: 3000, paymentMethod: "eSewa");
  processPayment(
    customerName: "Sam",
    amount: 7700,
    paymentMethod: "Khalti",
    transactionNote: "Python Course Payment",
    saveCard: true,
  );
}
