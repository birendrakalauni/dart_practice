class Student {
  final String name;
  final int age;

  const Student(this.name, this.age);
}

void main() {
  const student = Student("Biren", 22);

  print("Name: ${student.name}");
  print("Age: ${student.age}");
}
