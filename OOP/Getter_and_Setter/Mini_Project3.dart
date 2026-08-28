class BankAccount {
  int _accountNumber = 0;
  String _accountHolder = "";
  double _balance = 0;

  int get accountNumber => _accountNumber;

  String get accountHolder => _accountHolder;

  double get balance => _balance;

  bool get isEmpty => _balance == 0;

  bool get hasBalance => _balance > 0;

  set accountHolder(String value) {
    if (value.isEmpty) {
      throw ArgumentError("Account holder name can't be empty.");
    }
    _accountHolder = value.trim();
  }

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError("Deposit amount must be greater 0.");
    }
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError("Withdrawal amount must be greater than zero.");
    }
    if (amount > _balance) {
      throw ArgumentError("Insufficient balance.");
    }
    _balance -= amount;
  }
}

void main() {
  final account = BankAccount();

  // Set account holder using setter
  account.accountHolder = "  Birendra Kalauni   ";

  account.deposit(10000);
  account.withdraw(7000);

  // Read data using getters
  print("===== Bank Account =====");
  print("Account Number : ${account.accountHolder}");
  print("Account Holder : ${account.accountHolder}");
  print("Balance        : ${account.balance}");
  print("Is Empty       : ${account.isEmpty}");
  print("Has Balance    : ${account.hasBalance}");
}
