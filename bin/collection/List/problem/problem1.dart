

void main(){
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
}