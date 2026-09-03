//Notification Management System.

class Notification {
  void send(String message) {
    print("Sending notification: $message");
  }
}

class Email extends Notification {
  @override
  void send(String message) {
    super.send(message);
    print("Sending Email: $message");
  }
}

class SMS extends Notification {
  @override
  void send(String message) {
    print("Sending SMS: $message");
  }
}

class Push extends Notification {
  @override
  void send(String message) {
    print("Sending Push Notification: $message");
  }
}

void main() {
  final email = Email();
  final sms = SMS();
  final push = Push();

  email.send("Hello");
  sms.send("Hello");
  push.send("Hello");
}
