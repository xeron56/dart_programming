import 'dart:collection';

void main() {
  // Create a SplayTreeMap to manage event scheduling
  final eventSchedule = SplayTreeMap<int, int>();

  // Add events to the schedule
  addEvent(eventSchedule, 900, 1000);  // Event 1: 9:00 AM - 10:00 AM
  addEvent(eventSchedule, 1030, 1100); // Event 2: 10:30 AM - 11:00 AM
  addEvent(eventSchedule, 930, 1100);  // Event 3: 9:30 AM - 11:00 AM (Conflict)

  // Check for conflicts when adding events
  bool hasConflict = checkForConflict(eventSchedule, 930, 1100); // Should return true
  print('Conflict Detected: $hasConflict');

  // Find the next available time slot after 11:00 AM
  int nextAvailableTime = findNextAvailableTime(eventSchedule, 1100);
  print('Next Available Time: $nextAvailableTime'); // Should return 1100 (11:00 AM)
}

// Function to add an event to the schedule
void addEvent(SplayTreeMap<int, int> schedule, int startTime, int endTime) {
  // Check for conflicts
  if (checkForConflict(schedule, startTime, endTime)) {
    print('Scheduling Conflict: Unable to add event from $startTime to $endTime');
  } else {
    schedule[startTime] = endTime;
    print('Event scheduled from $startTime to $endTime');
  }
}

// Function to check for conflicts with existing events
bool checkForConflict(SplayTreeMap<int, int> schedule, int startTime, int endTime) {
  // Iterate through events to check for conflicts
  for (var entry in schedule.entries) {
    if (entry.key <= startTime && startTime < entry.value) {
      return true; // Conflict detected
    }
    if (entry.key < endTime && endTime <= entry.value) {
      return true; // Conflict detected
    }
  }
  return false; // No conflicts found
}

// Function to find the next available time slot after a given time
int findNextAvailableTime(SplayTreeMap<int, int> schedule, int time) {
  // Iterate through events to find the next available time slot
  for (var entry in schedule.entries) {
    if (entry.key > time) {
      return entry.key; // Next available time found
    }
  }
  return time; // No events scheduled after the given time
}