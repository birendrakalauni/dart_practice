class Person {
  String name;

  Person(this.name);
}

class Student extends Person {
  int rollNumber;

  Student(String name, this.rollNumber)
    : super(name); //super(name)-> calling the parent constructor
}

void main() {
  final st = Student("Harry", 101);

  print(st.name);
  print(st.rollNumber);
}
