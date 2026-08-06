// Student Marks Analyzer
void main() {
  List<int> marks = [78, 85, 93, 70, 77];

  print("Marks");
  print("-----");

  int total = 0;
  int highest = marks[0];
  int lowest = marks[0];
  int count8OOrAbove = 0;

  for (int mark in marks) {
    print(mark);

    total += mark; //Calculate total

    //Check for the highest mark
    if (mark > highest) {
      highest = mark;
    }

    if (mark < lowest) {
      lowest = mark;
    }
    if (mark >= 80) {
      count8OOrAbove++;
    }
  }
  double average = total / marks.length;

  print("Total : $total");
  print("Average : $average");
  print("Highest : $highest");
  print("Lowest : $lowest");
  print("Students scoring 80 or above : $count8OOrAbove");
}
