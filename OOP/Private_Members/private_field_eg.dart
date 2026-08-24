class Student {
  String _name;
  int _age;

  Student(this._name, this._age);

  void display() {
    print("Name: $_name");
    print("Age: $_age");
  }
}

void main() {
  Student st = Student("Harry", 23);

  st.display();
}
