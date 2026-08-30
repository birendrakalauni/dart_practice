class Student {
  // Instance fields
  String name = "";
  int age = 0;
  int rollNumber = 0;

  // Static fields
  static String collegeName = "SNSC";
  static int totalStudents = 0;

  Student(this.name, this.age, this.rollNumber) {
    totalStudents++;
  }

  static void showCollegeInfo() {
    print("College Name: $collegeName");
  }

  void displayStudent() {
    print("Student Name: $name");
    print("Age: $age");
    print("Roll Number: $rollNumber");
    print("College: $collegeName");
    print("");
  }
}

void main() {
  final student1 = Student("Birendra", 22, 1);

  final student2 = Student("Dipak", 21, 2);

  student1.displayStudent();
  student2.displayStudent();

  Student.showCollegeInfo();
  print("Total Students: ${Student.totalStudents}");
}
