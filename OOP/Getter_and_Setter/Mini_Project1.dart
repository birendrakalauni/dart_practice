class BankAccount {
  String accountNumber = "";
  double _balance = 0;

  void deposit(double amount) {
    if (amount <= 0) {
      print("Deposit amount must be greater than 0.");
      return;
    }
    _balance += amount;
    print("Deposited Amount: Rs. $amount");
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be greater than 0.");
      return;
    }

    if (amount > _balance) {
      print("Insufficient balance..");
      return;
    }

    if (amount < 500) {
      print("Withdrawal amount must be greater than or equal to 500.");
      return;
    }
    _balance -= amount;
    print("Withdrawn Amount: Rs. $amount");
  }

  double get balance => _balance;

  // bool get isEmpty => _balance.isEmpty;
  bool get isEmpty => _balance == 0;
}

void main() {
  BankAccount ac1 = BankAccount();

  ac1.deposit(7500);
  ac1.withdraw(7500);
  print("Available Balance: Rs. ${ac1.balance}");
  print("Is Account Empty: ${ac1.isEmpty}");
}
