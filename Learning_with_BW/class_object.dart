class Student {
  int rollNo = 10; //
  String name = 'Biren';

  void display(String name, int rollNo) {
    print("Name: $name");
    print("ROll No: $rollNo");
  }
}

class Car {
  String name = "AnyType"; //field

  void start() {} //method
}

void main() {
  Student st = Student();

  print("Student Name: ${st.name}");
  print("Roll Number: ${st.rollNo}");
  print("");

  Student st2 = Student();
  st2.display("Hari", 2);
  print("");

  Car byd = Car();
  byd.start();
  byd.name;

  Car tata = Car();
  tata.start();
}
