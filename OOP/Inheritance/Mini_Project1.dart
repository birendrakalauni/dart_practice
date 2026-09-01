// University Management System

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayPerson() {
    print("Name : $name");
    print("Age  : $age");
  }
}

class Student extends Person {
  int rollNumber;
  var semester;

  Student(String name, int age, this.rollNumber, this.semester)
    : super(name, age);

  void study() {
    print("$name studies CSIT.");
  }
}

class CSITStudent extends Student {
  String programmingLanguage;

  CSITStudent(
    String name,
    int age,
    int rollNumber,
    var semester,
    this.programmingLanguage,
  ) : super(name, age, rollNumber, semester);

  void code() {
    print("$name codes in $programmingLanguage.");
  }
}

class Teacher extends Person {
  String subject;
  double salary;

  Teacher(this.subject, this.salary, String name, int age) : super(name, age);
  void teach() {
    print("$name teaches $subject.");
  }
}

void main() {
  final csitst = CSITStudent("Harry", 21, 12, "sixth", "C#");

  final teacher = Teacher("DBMS", 77000, "Dr. Jharkhanda", 43);

  print("======= STUDENT =======");
  csitst.displayPerson();
  csitst.study();
  csitst.code();

   print("");

  print("======= TEACHER =======");
  teacher.displayPerson();
  teacher.teach();

  print("");
}
