void resisterUser({
  required String name,
  required int age,
  required bool isVerified,
}) {
  print("Name: $name");
  print("Age: $age");
  print("Is verified: $isVerified");
  print("");
}

void main() {
  resisterUser(name: "Birendra", age: 22, isVerified: true);
  resisterUser(name: "Sam", age: 22, isVerified: false);
}
