//Real-World Example: ATM Withdrawal
void main() {
  double balance = 10000;
  double amount = 2500;
  bool pinCorrect = true;
  if (pinCorrect && balance >= amount) {
    print("Withdrawal successful");
  } else {
    print("transaction Failed..");
  }
}
