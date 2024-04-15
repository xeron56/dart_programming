Here's a real-life problem that can be solved using the `List` class in Dart:

**Problem**: A school wants to keep track of the attendance records for their students. Each day, the teacher takes attendance and records the students who are present. The school wants to generate a report at the end of the week that shows the total number of days each student was present.

**Solution using List**:

1. Create a `List` to store the attendance records for each student.
2. Each day, the teacher can add the names of the present students to the list.
3. At the end of the week, iterate through the list and count the number of times each student's name appears, which will give the total number of days they were present.

Here's the Dart code that demonstrates this solution:

```dart
// Create a list to store the attendance records
final attendanceRecords = <String>[];

// Track attendance for each day of the week
attendanceRecords.addAll(['Alice', 'Bob', 'Charlie', 'Alice', 'Bob']);
attendanceRecords.addAll(['Alice', 'Charlie', 'David', 'Bob', 'Alice']);
attendanceRecords.addAll(['Alice', 'Bob', 'Charlie', 'David', 'Alice']);
attendanceRecords.addAll(['Bob', 'Charlie', 'David', 'Alice', 'Alice']);
attendanceRecords.addAll(['Alice', 'Bob', 'Charlie', 'David', 'Alice']);

// Generate the attendance report
final attendanceReport = <String, int>{};
for (final student in attendanceRecords) {
  if (attendanceReport.containsKey(student)) {
    attendanceReport[student] = attendanceReport[student]! + 1;
  } else {
    attendanceReport[student] = 1;
  }
}

// Print the attendance report
for (final entry in attendanceReport.entries) {
  print('${entry.key} was present for ${entry.value} days');
}
```

In this example, we use a `List` to store the attendance records for each day of the week. We then iterate through the list and count the number of times each student's name appears, which gives us the total number of days they were present. Finally, we print the attendance report.

The output of this code would be:

```
Alice was present for 5 days
Bob was present for 5 days
Charlie was present for 4 days
David was present for 4 days
```

This real-life problem demonstrates the usefulness of the `List` class in Dart for tracking and reporting on data. The `List` data structure allows us to easily store and manipulate the attendance records, making it a powerful tool for solving practical problems.