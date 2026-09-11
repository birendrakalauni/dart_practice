class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  double get balance {
    return _balance;
  }
}

void main() {
  final account = BankAccount();

  account.deposit(1000);
  print(account.balance);
}
