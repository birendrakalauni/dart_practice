// Professional Example: Repository Pattern

//Repository Abstraction

abstract class UserRepository {
  Future<void> login(String email, String password);
}

//API Repository Implementation

class ApiUserRepository implements UserRepository {
  Future<void> login(String email, String password) async {
    print("Login using API");
    print("Email: $email");
  }
}

//Firebase Repository Implementation

class FirebaseUserRepository implements UserRepository {
  Future<void> login(String email, String password) async {
    print("Login using Firebase");
    print("Email: $email");
  }
}

//Controller
class UserController {
  final UserRepository repository;
  UserController(this.repository);

  Future<void> login(String email, String password) async {
    await repository.login(email, password);
  }
}

void main() {
  const email = "birendra@gmail.com";
  const password = "123456";

  print("====== API LOGIN ======");

  UserRepository apiRepository = ApiUserRepository();

  final apiController = UserController(apiRepository);

  await apiController.login(email, password);

  print("");

  
}
