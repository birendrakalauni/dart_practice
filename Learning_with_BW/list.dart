void main() {
  // List<int> rollNum = [1, 2, 3, 4, 5];

  List<int> rollNum = [1, 2, 3, 4, 4];
  Set<int> rollSet = rollNum.toSet(); //Best use case
  print("Roll Num. is $rollNum ");
  rollNum.add(7);
  print("New rollNo is added $rollNum");
  rollNum.addAll([1, 6, 77]);
  print("New Roll Numbers: $rollNum");
  rollNum.removeAt(4); // index 4
  print("Roll Numbers after index 4 removed: $rollNum");
  rollNum.remove(7);
  print("Roll Numbers after 7 removed: $rollNum");
  print("");

  List<String> collegeName = ["SNSC", "CITE", "KEC", "KITE", "SKEC"];
  print("${collegeName.contains("KEC")}"); //Return true
  collegeName.add("FwU");
  print("College Names: $collegeName");
  collegeName.removeAt(4);
  print("College Names: $collegeName");
  // collegeName.removeAt(7); -> Out of range
  print("College Names: $collegeName");
  print("Length: ${collegeName.length}");
  print("");

  // If we need unique set of data then use set
  // Set roll = {1, 2, 3, 4, 8};
  print("Roll Numbers: $rollSet");
}
