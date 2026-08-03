void main() {
  String name = "Birendra";
  String? nickname;
  String? phone;
  late String collage;
  collage = "SNSC";
  print("Student Profile");
  print("---------------");

  print("Name: $name");
  print("Nickname: ${nickname ?? "No Nickname"}");
  print("Phone: ${phone ?? "Not Provided"}");
  print("Collage: $collage");
}
