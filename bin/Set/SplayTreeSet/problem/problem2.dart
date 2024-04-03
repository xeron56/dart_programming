import 'dart:collection';

class Event {
  final String name;
  final DateTime startTime;
  final DateTime endTime;

  Event(this.name, this.startTime, this.endTime);
}

void main() {
  // Create a SplayTreeSet to store events sorted by start time
  final eventSet = SplayTreeSet<Event>(
    (a, b) => a.startTime.compareTo(b.startTime),
  );

  // Add events
  eventSet.addAll([
    Event('Event 1', DateTime(2024, 4, 1, 10, 0), DateTime(2024, 4, 1, 12, 0)),
    Event('Event 2', DateTime(2024, 4, 1, 11, 0), DateTime(2024, 4, 1, 13, 0)),
    Event('Event 3', DateTime(2024, 4, 1, 14, 0), DateTime(2024, 4, 1, 15, 0)),
  ]);

  // Check for overlaps
  bool hasOverlap = false;
  Event? previousEvent;
  for (var event in eventSet) {
    if (previousEvent != null && event.startTime.isBefore(previousEvent.endTime)) {
      hasOverlap = true;
      print('Overlap detected between ${previousEvent.name} and ${event.name}');
    }
    previousEvent = event;
  }
  if (!hasOverlap) {
    print('No overlaps detected.');
  }

  // Retrieve events within a time range
  final startTime = DateTime(2024, 4, 1, 10, 0);
  final endTime = DateTime(2024, 4, 1, 13, 0);
  final eventsInRange = eventSet
      .where((event) => event.startTime.isAfter(startTime) && event.endTime.isBefore(endTime))
      .toList();
  print('Events within time range: $eventsInRange');
}