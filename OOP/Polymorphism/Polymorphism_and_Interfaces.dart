abstract class Payment {
  void pay(double amount);
}

class KhaltiPayment implements Payment {
  void pay(double amount) {
    print("Khalti Payment");
  }
}

class EsewaPayment implements Payment {
  void pay(double amount) {
    print("eSewa Payment");
  }
}

void main() {
  Payment payment = KhaltiPayment();
  payment.pay(1000);

// OR

  payment = EsewaPayment();
  payment.pay(1000);
}

/**One abstraction
      ↓
Multiple implementations

That is polymorphism. */