// Optional Named Parameters

class User {
  String name;
  int age;
  String email;

  User({required this.name, this.age = 0, required this.email}) {}
}

void main() {
  final user = User(name: "Birendra", email: "biren@gmail.com");

  print("User Name: ${user.name}");
  print("Age: ${user.age}");
  print("Email: ${user.email}");
}
