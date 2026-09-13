class BankAccount {
  String _accountNumber = '';
  String _ownerName = '';
  double _balance = 0;
  List<String> _transactions = [];

  BankAccount(this._accountNumber, this._ownerName);

  String get accountNumber => _accountNumber;
  String get ownerName => _ownerName;
  double get balance => _balance;
  List<String> get transactions => List.unmodifiable(_transactions);

  void deposit(double amount) {
    if (amount <= 0) {
      print("Deposit amount must be greater than zero.");
      return;
    }
    _balance += amount;
    _transactions.add("Deposited: Rs. $amount");
    print("Rs. $amount deposited successfully.");
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be greater than zero.");
      return;
    }
    if (amount > _balance) {
      print("Insufficient balance!");
      return;
    }
    _balance -= amount;
    _transactions.add("Withdrawn : Rs. $amount");
    print("Rs. $amount withdrawn successfully>");
  }

  //Transfer
  void transfer(BankAccount receiver, double amount) {
    if (amount <= 0) {
      print("Transfer amount must be greater than zero.");
      return;
    }
    if (amount > _balance) {
      print("Insufficient balance for transfer!");
      return;
    }
    _balance -= amount;
    receiver._balance += amount;

    _transactions.add("Transferred Rs. $amount to ${receiver.accountNumber}");
    receiver._transactions.add("Received: Rs. $amount from $accountNumber");

    print("Rs. $amount transferred successfully to ${receiver.ownerName}");
  }
}

void main() {
  final ac1 = BankAccount('ACC001', "Harry");
  final ac2 = BankAccount("ACC002", "Dippy");
  final ac3 = BankAccount("ACC003", "Birey");
  ac1.deposit(50000);
  ac1.withdraw(5000);
  ac3.deposit(17000);
  print('');
  ac1.transfer(ac2, 10000);
  ac1.transfer(ac3, 20000);
  ac2.transfer(ac3, 17750);
  print('');
  print("Individuals total balance.....");
  print("${ac1.ownerName} : Rs. ${ac1.balance}");
  print("${ac2.ownerName} : Rs. ${ac2.balance}");
  print("${ac3.ownerName} : Rs. ${ac3.balance}");

  print("");
  print("\n${ac1.ownerName}'s Transactions: ");
  for (final transaction in ac1.transactions) {
    print(transaction);
  }

  print("");
  print("${ac2.ownerName}'s Transactions: ");
  for (final transaction in ac2.transactions) {
    print(transaction);
  }

  print("");
  print("${ac3.ownerName}'s Transactions: ");
  for (final transaction in ac3.transactions) {
    print(transaction);
  }
  print("");
}
