class Vehicle {
  void start() {
    print("Vehicle Started.");
  }

  void stop() {
    print("Vehicle stopped!");
  }
}

class Car extends Vehicle {
  void drive() {
    print("Car is driving..");
  }
}

class Bike extends Vehicle {
  void ride() {
    print("Bike is riding..");
  }
}

void main() {
  final car = Car();
  final bike = Bike();

  car.start();
  car.drive();
  car.stop();

  print("");

  bike.start();
  bike.ride();
  bike.stop();
}
