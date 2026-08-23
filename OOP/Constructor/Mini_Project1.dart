// Student Management Model

class Student {
  final String id;
  final String name;
  final int age;
  final String course;

  Student(this.id, this.name, this.age, this.course);

  Student.guest() : id = "GUEST", name = "Guest", age = 0, course = "None";

/// Named constructor for API/JSON data
  Student.fromJson(Map<String, dynamic> json)
    : id = json["id"],
      name = json["name"],
      age = json["age"],
      course = json["course"];
}

void main() {
  Student student = Student("S111", "Haryy", 22, "CSIT");

  Student guest = Student.guest();

  Map<String, dynamic> data = {
    "id": "S101",
    "name": "Harish",
    "age": 21,
    "course": "BIT",
  };

  Student fromJson = Student.fromJson(data);

  print("Details of Normal Student...");
  print("ID: ${student.id}");
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Course: ${student.course}");
  print("");

  print("Details of Guest Student.....");
  print("ID: ${guest.id}");
  print("Name: ${guest.name}");
  print("Age: ${guest.age}");
  print("Course: ${guest.course}");
  print("");

  print("Details of API Student...");
  print("ID: ${fromJson.id}");
  print("Name: ${fromJson.name}");
  print("Age: ${fromJson.age}");
  print("Course: ${fromJson.course}");
  print("");
}
