/** Setter With Error Handling
You can throw an exception when invalid data is supplied. */

class Student {
  int _marks = 0;

  int get marks => _marks;

  set marks(int value) {
    if (value < 0 || value > 100) {
      throw ArgumentError("Marks must be between 0 and 100");
    }
    _marks = value;
  }
}

void main() {
  Student st1 = Student();
  st1.marks = 99;
  // st1.marks = 150; // this produces an exception
  print(st1.marks);
}
