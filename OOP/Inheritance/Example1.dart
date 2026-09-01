class User {
  final String id;
  final String name;

  User(this.id, this.name);

  void displayUser() {
    print("ID   : $id");
    print("Name :$name");
  }
}

class Admin extends User {
  Admin(String id, String name) : super(id, name);

  void manageUsers() {
    print("$name can manage users.");
  }
}

class Customer extends User {
  Customer(String id, String name) : super(id, name);

  void placeOrder() {
    print("$name can place an order.");
  }
}

void main() {
  final admin = Admin("A011", "Birey");

  final customer = Customer("C01", "Harry");

  print("+++++++ Admin +++++++");
  admin.displayUser();
  admin.manageUsers();

  print("");

  print("+++++++ Customer +++++++");
  customer.displayUser();
  customer.placeOrder();
}
