void main() {
  final stream = Stream.fromIterable([10, 20, 30, 40, 50]);

  stream.listen(
    (value) {
      print("Value: $value");
    },
    //you can also handle errors
    onError: (error) {
      print("Error: $error");
    },
    onDone: () {
      print("Stream completed!");
    },
  );
}
