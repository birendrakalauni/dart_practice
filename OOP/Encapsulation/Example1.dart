class UserAccount {
  String _email = '';
  String _password = '';

  void register(String email, String password) {
    if (!_isValidEmail(email)) {
      print("Invalid email");
      return;
    }

    if (password.length < 8) {
      print("Password too short");
      return;
    }
    _email = email;
    _password = password;

    print("Registration Successful");
  }

  bool _isValidEmail(String email) {
    return email.contains('@');
  }
}

void main() {
  final userAccount = UserAccount();
  userAccount.register("biren@gmail.com", "Hari har");
}
