abstract class Payment {
  void pay(double amount);

  void showReceipt() {
    print("receipt Generated");
  }
}

class KhaltiPayment extends Payment {
  void pay(double amount) {
    print("Paid Rs. $amount using Khalti.");
  }
}

class CardPayment extends Payment {
  void pay(double amount) {
    print("Paid Rs. $amount using Card.");
  }
}

void processPayment(Payment payment, double amount) {
  payment.pay(amount);
  payment.showReceipt();
}

void main() {
  processPayment(KhaltiPayment(), 7777);
  print("");
  processPayment(CardPayment(), 15000);
}
