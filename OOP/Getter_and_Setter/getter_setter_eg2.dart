// Professional Bank Account Design

class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError("Deposit must be greater than zero.");
    }
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError("Withdrawal must be greater than zero.");
    }
    if (amount > _balance) {
      throw ArgumentError("Insufficient balance.");
    }
    _balance -= amount;
  }
}

void main() {
  BankAccount ac1 = BankAccount();

  try {
    print("Initial Balance: Rs. ${ac1.balance}");
    ac1.deposit(10000);
    print("After Deposit: Rs. ${ac1.balance}");
    ac1.withdraw(15000);
    print("After Withdrawl: Rs. ${ac1.balance}");
  } catch (e) {
    print("Transaction Failed: $e");
  }
  print("Total Balance: Rs. ${ac1.balance}");
}

/** This is often better encapsulation than:

set balance(...)

because the domain rules are expressed as meaningful operations. */