// Mini Project — Validated User Profile

class UserProfile {
  String _name = "";
  String _email = "";
  int _age = 0;

  String get name => _name;

  set name(String value) {
    if (value.trim().isNotEmpty) {
      _name = value.trim();
    }
  }

  String get email => _email;

  set email(String value) {
    if (value.contains("@")) {
      _email = value.trim().toLowerCase();
    }
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  bool get isAdult => _age >= 18;

  bool get isComplete => _name.isNotEmpty && _email.isNotEmpty && _age > 0;
}

void main() {
  final user = UserProfile();

  user.name = "Birendra Kalauni";
  user.email = "BireNDRA@gmail.com";
  user.age = 22;

  print("Name: ${user.name}");
  print("Email: ${user.email}");
  print("Age: ${user.age}");
  print("Is Adult?: ${user.isAdult}");
  print("Is User Profile Complete?: ${user.isComplete}");
}
