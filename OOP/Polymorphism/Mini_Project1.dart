abstract class Notification {
  void send(String message);
}

class EmailNotification implements Notification {
  void send(String message) {
    print("Email: $message");
  }
}

class SMSNotification implements Notification {
  void send(String message) {
    print("SMS: $message");
  }
}

class PushNotification implements Notification {
  void send(String message) {
    print("Push: $message");
  }
}

//Polymorphic function
void sendNotification(Notification notification, String message) {
  notification.send(message);
}

void main() {
  sendNotification(EmailNotification(), "Your order has been shipped");

  sendNotification(SMSNotification(), "Your OTP is 1234");

  sendNotification(PushNotification(), "You have a new notification");

  print("");

  List<Notification> notifications = [
    EmailNotification(),
    SMSNotification(),
    PushNotification(),
  ];

  for (Notification ntfn in notifications) {
    ntfn.send("Hello User");
  }
}
