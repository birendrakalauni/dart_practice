//Student Scholarship Checker
void main() {
  String studentName = "Biren";
  double percentage = 88;
  bool incomeCertificate = true;

  //Using ternary operator
  String isEligibale = (percentage >= 80 && incomeCertificate) ? "Yes" : "No";

  print("Scholarship Status");
  print("-----------------");
  print("Student Name: $studentName");
  print("Percentage: $percentage");
  print("Eligible: $isEligibale");

  // if (incomeCertificate && percentage >= 80) {
  //   print("Yes");
  // } else {
  //   print("No");
  // }
}
