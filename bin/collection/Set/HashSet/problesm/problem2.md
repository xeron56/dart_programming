Let's consider a more complex real-life problem where we need to manage memberships for a community center. The community center offers various programs and activities, and members can enroll in multiple programs. However, we need to ensure that each member's enrollment is unique across all programs to avoid duplication.

Problem:
A community center offers multiple programs such as fitness classes, art workshops, and language courses. Members can enroll in one or more programs based on their interests. The center needs to manage memberships efficiently and ensure that each member is enrolled only once in each program.

Solution using HashSet:
We can use a `HashSet` to manage memberships for each program. Each program will have its `HashSet` containing unique member IDs. When a member enrolls in a program, the system checks if the member ID is already present in the program's `HashSet`. If it's not found, the member ID is added to the set, indicating a successful enrollment. If the member ID is found, it means the member is already enrolled, and no action is taken.

Example:

```dart
import 'dart:collection';

class CommunityCenter {
  // HashMap to store program memberships where key is program name and value is HashSet of member IDs
  HashMap<String, HashSet<int>> programMemberships = HashMap<String, HashSet<int>>();

  // Method to enroll member in a program
  void enrollMember(String programName, int memberId) {
    // Check if program exists in HashMap, if not, create a new HashSet for the program
    if (!programMemberships.containsKey(programName)) {
      programMemberships[programName] = HashSet<int>();
    }

    // Get the HashSet of member IDs for the program
    HashSet<int> members = programMemberships[programName]!;

    // Check if member ID is already enrolled in the program
    if (!members.contains(memberId)) {
      members.add(memberId);
      print('Enrollment successful for member ID $memberId in program: $programName');
    } else {
      print('Member ID $memberId is already enrolled in program: $programName');
    }
  }
}

void main() {
  CommunityCenter center = CommunityCenter();

  // Enrolling members in programs
  center.enrollMember('Fitness Classes', 1001); // Enrollment successful
  center.enrollMember('Fitness Classes', 1002); // Enrollment successful
  center.enrollMember('Art Workshops', 1001); // Enrollment successful
  center.enrollMember('Fitness Classes', 1001); // Member ID 1001 is already enrolled
  center.enrollMember('Language Courses', 1003); // Enrollment successful

  // Displaying program memberships
  print(center.programMemberships);
}
```

In this example, the `HashMap` `programMemberships` stores memberships for each program, where the key is the program name and the value is a `HashSet` containing unique member IDs. The `enrollMember` method checks if the program exists in the HashMap and creates a new HashSet if it doesn't. It then checks if the member ID is already enrolled in the program and adds it to the HashSet if not. Finally, it displays the program memberships after enrolling members.