void main() {
  sayHello("Biren", 9800000000);
  studentInfo(stName: "Sam", rollNumber: 7);
  collegeInfo(collegeName: "SNSC");
}

//Positional parameters
sayHello(String name, int phoneNumber) {
  print("Hello $name , your number is $phoneNumber");
  print("");
}

// Named parameters
studentInfo({required String stName, required int rollNumber}) {
  print("Hello, $stName your Roll Number is $rollNumber");
  print("");
}

collegeInfo({required String collegeName, int? phNumber}) {
  print("Collage Name: $collegeName");
  print("Collage Phone Number: $phNumber");
  print("");
}
