abstract class Printable {
  void printData();
}

abstract class Shareable {
  void share();
}

//A class can implement both:
class Document implements Printable, Shareable {
  void printData() {
    print("Printing document");
  }

  void share() {
    print("Sharing Document");
  }
}

void main() {
  final doc = Document();
  doc.printData();
  doc.share();
}
