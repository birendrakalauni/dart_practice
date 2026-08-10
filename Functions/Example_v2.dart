// Functions in Real Dart Programs
// Now, we can move the output logic into its own function.

void studentName(String name) {
  print("Name: $name");
}

int calculateTotal(List<int> marks) {
  int total = 0;

  for (int mark in marks) {
    total += mark;
  }
  return total;
}

double calculateAverage(int total, int numOfSubjects) => total / numOfSubjects;

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

bool hasPassed(double average) {
  return average >= 40;
}

// Building a Report Function

void printReport(List<int> marks) {
  int total = calculateTotal(marks);
  double average = calculateAverage(total, marks.length);
  String grade = calculateGrade(average);
  bool passed = hasPassed(average);

  print("================================");
  print("Student Report");
  print("================================");
  print("");
  studentName("Rakesh Saud");
  print("Marks : $marks");
  print("Total: $total");
  print("Average: $average");
  print("Grade: $grade");
  print("Result: ${passed ? "Pass" : "Fail"}");
  print("");
}

void main() {
  List<int> marks = [80, 77, 90, 85, 70];
  printReport(marks);
}
