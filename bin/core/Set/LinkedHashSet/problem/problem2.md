Let's consider a real-life problem where we need to manage the attendance of students in a classroom. We want to keep track of the students who attended the class on a particular day. We'll use a `LinkedHashSet` to store the names of the students who attended, ensuring that the order of insertion is maintained.

```dart
import 'dart:collection';

void main() {
  // Creating a LinkedHashSet to store attendance
  LinkedHashSet<String> attendance = LinkedHashSet<String>();

  // Function to mark attendance
  void markAttendance(String studentName) {
    attendance.add(studentName);
    print("$studentName marked present.");
  }

  // Simulating students attending the class
  markAttendance("John");
  markAttendance("Alice");
  markAttendance("Bob");
  markAttendance("Emma");

  // Printing the attendance list
  print("\nAttendance for the day:");
  attendance.forEach((student) => print(student));

  // Checking if a student is present
  String studentToCheck = "Alice";
  print("\nIs $studentToCheck present? ${attendance.contains(studentToCheck) ? "Yes" : "No"}");

  // Removing a student from attendance
  String studentToRemove = "Bob";
  attendance.remove(studentToRemove);
  print("\n$studentToRemove has been removed from attendance.");

  // Printing the updated attendance list
  print("\nUpdated Attendance:");
  attendance.forEach((student) => print(student));
}
```

In this example, we simulate students attending a class by calling the `markAttendance()` function for each student. The function adds the student's name to the `LinkedHashSet` representing the attendance. We then print out the attendance list.

Later, we demonstrate checking whether a specific student is present in the class and remove a student from the attendance list. Finally, we print the updated attendance list.

Using a `LinkedHashSet` for this problem ensures that the order in which students arrived is maintained, which can be useful for various analytics or administrative purposes.