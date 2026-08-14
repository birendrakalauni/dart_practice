void main() {
  String name = "Biren";
  print("My name is ${name.toUpperCase()}");
  String stuName = '';
  print("Is stu. Name Empty?: ${stuName.isEmpty}");
  print("");

  int age = 22;
  print("My age is $age}");
  print("Even: ${age.isEven}");
  print("");

  num money = 10.10;
  print("Money: $money");
  print("Money in dollor: \$ $money");
  print("");

  var collegeName = "SNSC";
  var rollNum = 5;

  print("College Name: $collegeName");
  collegeName = "FWU";
  print(collegeName);
  print("");

  dynamic test = 123;
  print(test);
  test = "Biren";
  print(
    "Name: $test",
  ); // dynamic data type can be accept any type of data even we assigned..

  bool isLogin = false;
  print(isLogin); // var and dynamic rakhda ni hunxa!
}
