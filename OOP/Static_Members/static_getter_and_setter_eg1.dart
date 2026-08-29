class AppConfig {
  static String _appName = "";

  static String get appName => _appName;

  static set appName(String value) {
    _appName = value;
  }
}

void main() {
  AppConfig.appName = "Shopping App"; //No object is required
  print(AppConfig.appName);
}
