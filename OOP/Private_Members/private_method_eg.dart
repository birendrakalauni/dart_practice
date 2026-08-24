class User {
  /*The public method login() internally uses _validate()
  The external caller doesn't need to know how validation works*/
  void login() {
    print("Login Started");
    _validate();
  }

  void _validate() {
    print("Validating credentials");
  }
}

void main() {
  User user = User();
  // user._validate();
  user.login();
}

//This is a basic example of encapsulation.
