class User {
  final String name;
  final bool isGuest;

  const User(this.name, this.isGuest);

  const User.guest() : name = "Guest", isGuest = true;
}

void main() {
  const user = User("Hari", false);
  print("User Details...");
  print("User Name: ${user.name}");
  print("Is Guest?: ${user.isGuest}");
  print("");

  const guest = User.guest(); //named constant constructor
  print("User Name: ${guest.name}");
  print("Is Guest?: ${guest.isGuest}");
  print("");
}
