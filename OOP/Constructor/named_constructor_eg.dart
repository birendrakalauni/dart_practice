class User {
  String name;
  int age;

  // Normal Constructor
  User(this.name, this.age);

  // Named Constructor
  User.guest() : name = "Guest", age = 0;

  User.fromData(this.name, this.age); // Named Constructor with Parameters
}

void main() {
  // Using Normal Constructor
  User user = User("Birendra", 22);

  print("User Details...");
  print("Name: ${user.name}");
  print("Age: ${user.age}");

  print("");

  // Using Named Constructor
  User guestUser = User.guest();

  print("Guest User Details...");
  print("Name: ${guestUser.name}");
  print("Age: ${guestUser.age}");

  User fromData = User.fromData("Dipak", 23);
  print("User Details from Data..");
  print("Name: ${fromData.name}");
  print("Age: ${fromData.age}");
}
