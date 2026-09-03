class Animal {
  void sound() {
    print("Animal makes a sound.");
  }
}

class Dog extends Animal {
  void sound() {
    print("Dog says Woof.");
  }
}

void main() {
  final dog = Dog();
  dog.sound();
}
