// Practical Example — Bank Account

class BankAccount {
  String accountHolder = "";
  double balance = 0;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }

  double getBalance() {
    return balance;
  }
}

void main() {
  final account = BankAccount();

  account.accountHolder = "Sam Shahi";
  account.balance = 7000;
  account.deposit(10000);
  account.withdraw(7750);

  print("Account Holder Name: ${account.accountHolder}");
  print("Total Balance: Rs. ${account.getBalance()}");
}
