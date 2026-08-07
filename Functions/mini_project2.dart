// Employee Salary Slip
void salarySlip(String name, String position, double salary) {
  print("======================");
  print("Employee Salary Slip!");
  print("======================");
  print('');
  print("Name: $name");
  print("Position: $position");
  print("BAsec Salary: Rs. $salary");
  double tax = salary * 10 / 100;
  double netSalary = salary - tax;
  print("Tax(10%): Rs. $tax");
  print("Net Salary: Rs. $netSalary");
  print("");
}

void main() {
  salarySlip("Birendra", "Flutter Developer", 40000);
}
