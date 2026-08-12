// Real-World Flutter Example

class Book {
  final String title;
  final String author;
  final double price;

  Book({required this.title, required this.author, required this.price});

  void displayInfo() {
    print("Title: $title");
    print("Author: $author");
    print("price: Rs. $price");
    print("");
  }
}

void main() {
  final books = <Book>[
    Book(
      title: "Advance Java Programming",
      author: "Mahesh Lekhak",
      price: 2700,
    ),
    Book(title: "Flutter Framework", author: "Dr. Divyanshu ", price: 5000),
    Book(title: "C++ Programming", author: "Dipak Aide", price: 3000),
    Book(
      title: "Data Structure and Algorithm",
      author: "Dr. Manoj Jha",
      price: 2500,
    ),
    Book(
      title: "Advanced Data Base Management System",
      author: "Dr. Biren. Kane",
      price: 3500,
    ),
  ];

  print("=====================================");
  print("            LIBRARY BOOKS");
  print("=====================================");
  print("");

  for (Book book in books) {
    book.displayInfo();
  }

  // Calculate total value of all books
  double totalValue = 0;

  for (Book book in books) {
    totalValue += book.price;
  }

  // Finding most expensive book

  Book mostExpensive = books[0];
  for (Book book in books) {
    if (book.price > mostExpensive.price) {
      mostExpensive = book;
    }
  }

  // find the cheapest book
  Book cheapest = books[0];

  for (Book book in books) {
    if (book.price < cheapest.price) {
      cheapest = book;
    }
  }

  // Display
  print("=====================================");
  print("           LIBRARY SUMMARY");
  print("=====================================");
  print("");

  print("Total Value of All Books: Rs. $totalValue");
  print("");

  print("Most Expensive Book");
  print("Title: ${mostExpensive.title}");
  print("Price: Rs. ${mostExpensive.price}");
  print("");

  print("Cheapest Book");
  print("Title: ${cheapest.title}");
  print("Price: Rs. ${cheapest.price}");
  print("");
  print("=====================================");
}
