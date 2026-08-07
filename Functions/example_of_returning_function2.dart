bool hasPassed(int marks) {
  return marks >= 40;
}

void main() {
  if (hasPassed(77)) {
    print("Pass");
  } else {
    print("Fail");
  }
}
