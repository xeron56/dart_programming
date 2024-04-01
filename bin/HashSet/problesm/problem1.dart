import 'dart:collection';

class SocialMediaApp {
  HashSet<String> registeredUsernames = HashSet<String>();

  // Method to register a new user
  void registerUser(String username) {
    if (!registeredUsernames.contains(username)) {
      registeredUsernames.add(username);
      print('Registration successful for username: $username');
    } else {
      print('Username "$username" is already taken. Please choose a different one.');
    }
  }
}

void main() {
  SocialMediaApp socialMediaApp = SocialMediaApp();

  // Registering new users
  socialMediaApp.registerUser('john_doe'); // Registration successful
  socialMediaApp.registerUser('jane_doe'); // Registration successful
  socialMediaApp.registerUser('john_doe'); // Username "john_doe" is already taken
  socialMediaApp.registerUser('john_smith'); // Registration successful
}