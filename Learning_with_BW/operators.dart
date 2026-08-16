// Different Types of operators

void main() {
  int a = 10;
  int b = 5;

  //Arithmetic Operators
  print("Arithmetic Operators........");
  print("Addition: ${a + b}");
  print("Subtract: ${a - b}");
  print("Multiplication: ${a * b}");
  print("Dividion: ${a / b}");
  print("Modulus: ${a % b}");
  print("");

  // Comparison operators
  print("Comparison operators.....");
  print("a > b: ${a > b}"); //true
  print("a < b: ${a < b}");
  print("a == b: ${a == b}");
  print("a != b: ${a != b}");
  print("");

  // Logical Operators
  bool isLoggedIn = true;
  bool isAdmin = false;

  print("Logical Operators...");
  print("AND (&&): ${isLoggedIn && isAdmin}"); //false
  print("OR (||): ${isLoggedIn || isAdmin}");
  print("NOT (!): ${!isLoggedIn}"); //false
  print("");

  // Assignment Operators
  print("Assignment Operators....");
  int num = 10;
  num += 5; // num = num +5
  print("After += : $num");

  num -= 7;
  print("After -= : $num");
  print("");

  // Increment / Decrement
  print("Increment / Decrement...");
  int count = 5;

  count++;
  print("After Increment: $count");

  count--;
  print("After Decrement: $count");
  print("");
}
