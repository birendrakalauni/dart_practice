class Animal {
  void sound() {
    print("Animal Sound");
  }
}

class Dog extends Animal {
  void sound() {
    print("Bark");
  }
}

class Cat extends Animal {
  void sound() {
    print("Meow");
  }
}

void main() {
  List<Animal> animals = [Dog(), Cat(), Dog()];

  for (Animal animal in animals) {
    animal.sound();
  }
}
