// Getters and Setters in Real Flutter Architecture

class AuthState {
  final String? token;
  final bool loading;

  const AuthState({this.token, this.loading = false});

  bool get isAuthenticated => token != null;

  bool get isLoading => loading;
}
//These are getters.
// For mutable domain objects, setters may be appropriate:

class UserProfile {
  String _name = "";

  String get name => _name;
  
  // Setter allows outside code to modify the name while giving the class control over how the value is stored.
  set name(String value) { 
    _name = value.trim();
  }
}

//But in many modern Flutter architectures, application state is intentionally immutable. Instead of setters, you often create a new state object: state.copyWith(name: newName)
void main() {
  const AuthState loggedOut = AuthState();

  const AuthState loggedIn = AuthState();
  token:
  "abc123";

  const AuthState loadingState = AuthState(loading: true);

  print("======Authentication State=======");

  print("Logged Out:");
  print("Authenticated: ${loggedOut.isAuthenticated}");
  print("Loading: ${loggedOut.isLoading}");
  print("");

  print("Logged In:");
  print("Authenticated: ${loggedIn.isAuthenticated}");
  print("Loading: ${loggedIn.isLoading}");
  print("");

  print("Loading State:");
  print("Authenticated: ${loadingState.isAuthenticated}");
  print("Loading: ${loadingState.isLoading}");
  print("");

  //User profile example

  UserProfile profile = UserProfile();

  print("=======User Profile=======");

  //Using Setter
  profile.name = "  Birendra Kalauni";

  //Using getter

  print("Name: ${profile.name}");

  //Updating the name
  profile.name = "Birendra Prasad Kalauni";
  print("Updated Name: ${profile.name}");
}
