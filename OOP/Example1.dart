// Real-World Example — Bank Account

class BankAccount {
  String accountHolder = "";
  double balance = 0;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }
}

void main() {
  BankAccount ba = BankAccount();
  ba.accountHolder = "Birendra Kalauni";
  ba.balance = 7777;

  ba.deposit(5000);
  ba.withdraw(2700);

  print("Account Holder Name: ${ba.accountHolder}");
  print("Balance: ${ba.balance}");
}
