class Counter {
  int _count = 0;

  void increment() {
    _count++;
  }

  void decrement() {
    if (_count > 0) {
      _count--;
    }
  }

  int getCount() {
    return _count;
  }
}

void main() {
  Counter counter = Counter();

  counter.increment();
  counter.increment();

  print(counter.getCount());
}
