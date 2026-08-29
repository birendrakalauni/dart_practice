class Student {
  String name;
  static String college = "SNSC";

  Student(this.name);
}

void main() {
  final student1 = Student("Ramu");
  final student2 = Student("Dipu");

  print(student1.name);
  print(student2.name);

  print(Student.college);
}
