class AuthService {
  String? _token;

  bool get isLoggedIn {
    return _token != null;
  }

  void login(String token) {
    _token = token;
  }

  void logout() {
    _token = null;
  }
}

void main() {
  final authService = AuthService();

  authService.login("abc@123");
  print(authService.isLoggedIn);

  authService.logout();
  print(authService.isLoggedIn);
}

/**External code doesn't directly manipulate: _token
Instead: login(), logout(), isLoggedIn
form the public API.

This is a much better design than exposing internal state directly. */