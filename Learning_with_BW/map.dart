void main() {
  Map<String, dynamic> studentInfo = {
    "Name": "Syam",
    "Address": "MNR",
    "rollNumber": 17,
  };

  print("Keys: ${studentInfo.keys}");
  print("Values: ${studentInfo.values}");
  print("Entities: ${studentInfo.entries}");

  // Map<int, int> bankAccount = {}; // Map<key, value>
}
