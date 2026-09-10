//Complete Banking System

abstract class BankAccount {
  String? accountNumber;
  double _balance = 0;

  BankAccount(this.accountNumber);

  double get balance => _balance;

  void deposit(double amount);

  void withdraw(double amount);
}

class SavingsAccount extends BankAccount {
  SavingsAccount(String accountNumber) : super(accountNumber);
  @override
  void deposit(double amount) {
    if (amount <= 0) {
      print("Deposit amount must be greater than 0.");
      return;
    }
    _balance += amount;
    print("Savings Account : Rs. $amount deposited.");
  }

  @override
  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be greater than 0.");
      return;
    }
    if (amount >= _balance) {
      print("Saving Account : Insufficient balance");
      return;
    }
    _balance -= amount;
    print("Savings Account : Rs. $amount withdrawn.");
  }
}

class CurrentAccount extends BankAccount {
  CurrentAccount(String accountNumber) : super(accountNumber);
  @override
  void deposit(double amount) {
    if (amount <= 0) {
      print("Deposit amount must be greater than 0.");
      return;
    }
    _balance += amount;
    print("Current Account : Rs. $amount deposited.");
  }

  @override
  void withdraw(double amount) {
    if (amount < 500) {
      print("Current Account: Minimum withdrawal is Rs. 500.");
      return;
    }
    if (amount > _balance) {
      print("Current Account: Insufficient balance.");
      return;
    }

    _balance -= amount;
    print("Current Account : Rs. $amount withdrawn.");
  }
}

//Polymorphic function

void processAccount(BankAccount account) {
  print("Account Number: ${account.accountNumber}");

  account.deposit(10000);
  print("Balance after deposit: Rs. ${account.balance}");

  account.withdraw(1000);
  print("Balance after deposit: Rs. ${account.balance}");

  print("---------------------------");
  print("");
}

void main() {
  List<BankAccount> accounts = [
    SavingsAccount('SAV-01011'),
    CurrentAccount('CUR-01011'),
  ];

  for (BankAccount account in accounts) {
    processAccount(account);
  }
}
