class Animal {
  void eat() {
    print("Eating..");
  }
}

class Mammal extends Animal {
  void breathe() {
    print("Breathing..");
  }
}

class Dog extends Mammal {
  void bark() {
    print("barking..");
  }
}

void main() {
  final dog = Dog();
  dog.eat();
  dog.breathe();
  dog.bark();
}
