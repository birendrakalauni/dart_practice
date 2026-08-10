// Functions in Real Dart Programs
// Now, we can move the output logic into its own function.

// Calculate the total marks
int calculateTotal(List<int> marks) {
  int total = 0;

  for (int mark in marks) {
    total += mark;
  }
  return total;
}

//Calculate the average marks
double calculateAverage(int total, int numOfSubjects) => total / numOfSubjects;

//Calculate the grade
String calculateGrade(double average) {
  if (average >= 80) {
    return "A";
  } else if (average >= 70) {
    return "B";
  } else if (average >= 60) {
    return "C";
  } else if (average >= 50) {
    return "D";
  } else {
    return "F";
  }
}

//Check whether the student passed
bool hasPassed(double average) {
  return average >= 40;
}

//Find the highest mark
int findHighest(List<int> marks) {
  int highest = marks[0];

  for (int mark in marks) {
    if (mark > highest) {
      highest = mark;
    }
  }
  return highest;
}

//Find the lowest mark
int findLowest(List<int> marks) {
  int lowest = marks[0];

  for (int mark in marks) {
    if (mark < lowest) {
      lowest = mark;
    }
  }
  return lowest;
}

// Building a Report Function || Print the student report

void printReport({required name, required List<int> marks}) {
  int total = calculateTotal(marks);
  double average = calculateAverage(total, marks.length);
  String grade = calculateGrade(average);
  bool passed = hasPassed(average);
  int highest = findHighest(marks);
  int lowest = findLowest(marks);

  print("================================");
  print("         Student Report");
  print("================================");
  print("");
  print("Name: $name");
  print("Marks : $marks");
  print("");
  print("Total: $total");
  print("Average: $average");
  print("Grade: $grade");
  print("Result: ${passed ? "Pass" : "Fail"}");
  print("");
  print("Highest Mark: $highest");
  print("Lowest Mark: $lowest");
  print("");
  print("================================");
  print("");
}

void main() {
  String name = "Birendra Kalauni";

  List<int> marks = [80, 77, 90, 85, 70];

  printReport(name: name, marks: marks);
}
