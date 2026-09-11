class Person {
  String _name = "";

  String get name => _name;

  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }
}

void main() {
  final person = Person();
  person.name = "Birendra";
  print(person.name);
}
