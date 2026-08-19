//Creating a Stream Using async*

void main() {
 
  Stream<int> getNumbers() async* {
    // yield sends a value into the stream
    yield 10;
    yield 20;
    yield 30;
  }
   getNumbers().listen((value) {
    print("Value: $value");
  });

}
