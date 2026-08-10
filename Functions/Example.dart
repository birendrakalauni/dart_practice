// Functions in Real Dart Programs
// Mini Project: Student Management System

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

void main() {
  List<int> marks = [80, 77, 90, 85, 70];

  print("================================");
  print("Student Report");
  print("================================");
  print("");

  studentName("Rakesh Saud");
  print("Marks : $marks");

  int total = calculateTotal(marks);
  print("Total: $total");
  double average = calculateAverage(total, marks.length);
  print("Average: $average");

  String grade = calculateGrade(average);
  print("Grade: $grade");

  bool passed = hasPassed(average);

  // if (hasPassed(average)) {
  //   print("Result: Pass");
  // } else {
  //   print("result: Fail");
  // }

  print("Result: ${passed ? "Pass" : "Fail"}");
  print("");
}
