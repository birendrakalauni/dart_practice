class AppConstants {
  static const String appName = "Shop App";
  static const String baseUrl = "https://api.example.com";
  static const int timeoutSeconds = 30;
}

class ApiEndpoints {
  static const String products = "/products";
  static const String users = "/users";
  static const String login = "/login";
}

void main() {
  final url = "${AppConstants.baseUrl} ${ApiEndpoints.products}";
  print(url);
}
