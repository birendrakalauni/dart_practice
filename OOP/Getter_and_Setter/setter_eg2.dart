class Temperature {
  double _celsius = 0;

  double get celsius => _celsius;

  set celsius(double value) {
    _celsius = value;
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32;
}

void main() {
  final temp = Temperature();

  temp.celsius = 37;

  print(temp.fahrenheit);
}

/**
 * Here:

Setter
   ↓
updates Celsius

Getter
   ↓
calculates Fahrenheit */