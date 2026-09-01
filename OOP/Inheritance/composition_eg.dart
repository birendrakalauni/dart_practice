class Engine {
  void start() {
    print("Engine Started!");
  }

  void stop() {
    print("Engine Stopped!");
  }
}

//A Car has an Engine.
class Car {
  final Engine engine;

  Car(this.engine);

  void startCar() {
    print("Car is starting..");
    engine.start();
    }
     void stopCar() {
      print("Car is stopping..");
      engine.stop();
  }
}

void main() {
  final engine = Engine(); // Create an engine object

  final car = Car(engine); // pass Engine object to Car

  car.startCar();
  print("");
  car.stopCar();
}
