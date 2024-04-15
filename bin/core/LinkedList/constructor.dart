import 'dart:collection';

// Define a custom LinkedListEntry class
final class EntryItem extends LinkedListEntry<EntryItem> {
  final int id;
  final String text;

  EntryItem(this.id, this.text);

  @override
  String toString() {
    return '$id : $text';
  }
}

void main() {
  // Create a new empty LinkedList
  final emptyList = LinkedList<EntryItem>();
  print('Created an empty LinkedList: $emptyList');
  // Output: Created an empty LinkedList: ()

  // Add some elements to the list
  emptyList.add(EntryItem(1, 'Apple'));
  emptyList.add(EntryItem(2, 'Banana'));
  emptyList.add(EntryItem(3, 'Cherry'));
  print('List after adding elements: $emptyList');
  // Output: List after adding elements: (1 : Apple, 2 : Banana, 3 : Cherry)

  // Create a new LinkedList with initial elements
  // final initialList = LinkedList<EntryItem>.addAll([
  //   EntryItem(4, 'Date'),
  //   EntryItem(5, 'Elderberry'),
  //   EntryItem(6, 'Fig'),
  // ]);

  final initialList = LinkedList<EntryItem>();
  initialList.addAll([
    EntryItem(4, 'Date'),
    EntryItem(5, 'Elderberry'),
    EntryItem(6, 'Fig'),
  ]);
  
  print('Created a LinkedList with initial elements: $initialList');
  // Output: Created a LinkedList with initial elements: (4 : Date, 5 : Elderberry, 6 : Fig)

  // Combine the two lists
  emptyList.addAll(initialList);
  print('Combined lists: $emptyList');
  // Output: Combined lists: (1 : Apple, 2 : Banana, 3 : Cherry, 4 : Date, 5 : Elderberry, 6 : Fig)

  // Clear the combined list
  emptyList.clear();
  print('Cleared the combined list: $emptyList');
  // Output: Cleared the combined list: ()
}