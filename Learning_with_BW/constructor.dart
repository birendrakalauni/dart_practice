class Student {
  String name;
  int? age;

  Student(this.name, this.age); // parameterized constructor
  ///method
  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}

class Car {
  String name;
  int? plateNum;

  Car({required this.name, this.plateNum}); // Constructor with named parameters

  void show() {
    print("Car Brand: $name");
    print("Number Plate: $plateNum");
  }
}

void main() {
  Student s1 = Student("Haryy", 22);
  print("Student Details........");
  s1.display();
  print("");
  print("Car Details..........");
  Car car1 = Car(name: "Thar");
  car1.show();
  print("");

  Car car2 = Car(name: "Tata", plateNum: 7899); // named parameters
  car2.show();
}
