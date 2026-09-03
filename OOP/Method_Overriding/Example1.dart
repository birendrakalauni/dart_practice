class Payment {
  void pay(double amount) {
    print("Processing payment of $amount");
  }
}

class KhaltiPayment extends Payment {
  void pay(double amount) {
    print("Paying Rs. $amount using Khalti");
  }
}

class CardPayment extends Payment {
  void pay(double amount) {
    print("Paying Rs. $amount using card");
  }
}

class EsewaPayment extends Payment {
  void pay(double amount) {
    print("Paying Rs. $amount using eSewa");
  }
}

void main() {
  final khalti = KhaltiPayment();
  final card = CardPayment();
  final eSewa = EsewaPayment();

  khalti.pay(5000);
  card.pay(7777);
  eSewa.pay(10000);
}
