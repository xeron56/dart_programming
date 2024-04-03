Sure! Let's consider a real-life problem where we need to manage a list of unique usernames in a social media application. We can use a `HashSet` to efficiently handle this task.

Problem:
In a social media application, we need to ensure that each user has a unique username when they register. Users can attempt to register with usernames that are already taken, and we need to check if a username is available or not.

Solution using HashSet:
We can use a `HashSet` to store all the registered usernames. When a user attempts to register with a new username, we can quickly check if the username is already in use by looking it up in the `HashSet`. If the username is not found, it means it's available, and the user can proceed with registration. If the username is found, it means it's already taken, and the user needs to choose a different username.

Example:

```dart
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
```

In this example, the `HashSet` `registeredUsernames` stores all registered usernames. The `registerUser` method checks if the provided username already exists in the `HashSet`. If it doesn't exist, the username is added to the `HashSet`, indicating a successful registration. If the username already exists, the method notifies the user that the username is already taken.