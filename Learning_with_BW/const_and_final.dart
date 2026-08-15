void main() {
  //final(run time constant)

  // value can be set only once

  final String name = "Biren";
  print("Final Name: $name");
  // name = "Ram"; Not Allowed
  final currentTime = DateTime.now();
  print("Current Time: $currentTime");

  // const (compile time constant)
  //value must be known before program runs
  const double pi = 3.14;
  print("PI Value: $pi");

  // final list (can modify data)

  final List<int> finalList = [1, 2, 3];
  finalList.add(4); //Allowed
  print("Final List: $finalList");

  //const list (can't modify data)
  const List<int> constList = [1, 2, 3];
  // finalList.add(4); // Not Allowed
  print("Const List: $constList");
}
