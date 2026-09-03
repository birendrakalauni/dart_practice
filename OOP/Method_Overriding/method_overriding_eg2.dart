//The overriding method must be compatible with the superclass member.

class Parent {
  int calculate(int value) {
    return value;
  }
}
//A compatible override
class Child extends Parent {
  int calculate(int value) {
    return value * 2;
  }
}

void main() {
  Child child = Child();

  print(child.calculate(4));
}
