// Mini Project: Immutable App Configuration

class AppConfig {
  final String appName;
  final String version;
  final String environment;

  const AppConfig(this.appName, this.version, this.environment);

  const AppConfig.production()
    : appName = "My Flutter App",
      version = "1.0.0",
      environment = "production";

  const AppConfig.development()
    : appName = "My Flutter App",
      version = "1.0.0",
      environment = "development";
}

void main() {
  const production = AppConfig.production();
  const development = AppConfig.development();

  print(production.environment);
  print(development.environment);
}

/** This project combines:

final
  +
const
  +
named constructor
  +
initializer list
  +
immutability
 */