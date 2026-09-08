//Abstract Class with Fields

abstract class Employee {
  String name;

  Employee(this.name);

  void calculateSalary();
}

class Developer extends Employee {
  Developer(String name) : super(name);

  void calculateSalary() {
    print("$name earns developer salary.");
  }
}

void main() {
  Developer dev = Developer("Biren.dra");

  dev.calculateSalary();
}
