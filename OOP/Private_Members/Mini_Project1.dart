// Bank Account System

class BankAccount {
  final String acNumber;
  double _balance = 0;

  BankAccount(this.acNumber);

  void deposit(double amount) {
    if (amount <= 0) {
      print("Deposit amount must be greater than 0.");
      return;
    }
    _balance += amount;
    print("Deposited Amount: Rs. $amount");
  }

  bool withdraw(double amount) {
    if (amount <= 500) {
      print("Withdrawal amount must be greater than or equal to 500.");
      return false;
    }

    if (amount > _balance) {
      print("Insufficient balance.");
      return false;
    }
    _balance -= amount;
    print("Withdrawn Amount: Rs. $amount");

    return true;
  }

  double getBalance() {
    return _balance;
  }
}

void main() {
  BankAccount ac1 = BankAccount("0761017507777");
  BankAccount ac2 = BankAccount("07610017502222");
  BankAccount ac3 = BankAccount("0761017503333");
  print("ACCOUNT_1");
  print("----------------------------");
  ac1.deposit(10000);
  ac1.withdraw(7750);
  print("Available Balance: Rs. ${ac1.getBalance()}");
  print("");

  print("ACCOUNT_2");
  print("----------------------------");
  ac2.deposit(17000);
  ac2.withdraw(400);
  print("Available Balance: Rs. ${ac2.getBalance()}");
  print("");

  print("ACCOUNT_3");
  print("----------------------------");
  ac3.deposit(10000);
  ac3.withdraw(15000);
  print("Available Balance: Rs. ${ac3.getBalance()}");
}
