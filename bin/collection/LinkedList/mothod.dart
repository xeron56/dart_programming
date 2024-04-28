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
  // Create a new LinkedList
  final linkedList = LinkedList<EntryItem>();

  // Add elements to the list
  linkedList.add(EntryItem(1, 'Apple'));
  linkedList.addFirst(EntryItem(0, 'Pear'));
  linkedList.addAll([EntryItem(2, 'Banana'), EntryItem(3, 'Cherry'), EntryItem(4, 'Date')]);

  // Check if the list contains an element
  print('Does the list contain "Banana"? ${linkedList.contains(EntryItem(2, 'Banana'))}'); // Output: true
  print('Does the list contain "Elderberry"? ${linkedList.contains(EntryItem(5, 'Elderberry'))}'); // Output: false

  // Iterate over the list using forEach
  print('Iterating over the list using forEach:');
  for (var entry in linkedList) {
    print(entry);
  }
  // Output:
  // 0 : Pear
  // 1 : Apple
  // 2 : Banana
  // 3 : Cherry
  // 4 : Date

  // Get an element by index
  print('Element at index 2: ${linkedList.elementAt(2)}'); // Output: 2 : Banana

  // Remove an element from the list
  linkedList.remove(linkedList.elementAt(3)); // Remove the 4th element (Cherry)
  print('List after removing an element: $linkedList');
  // Output: (0 : Pear, 1 : Apple, 2 : Banana, 4 : Date)

  // Remove the first element
  linkedList.first.unlink();
  print('List after removing the first element: $linkedList');
  // Output: (1 : Apple, 2 : Banana, 4 : Date)

  // Remove the last element
  linkedList.remove(linkedList.last);
  print('List after removing the last element: $linkedList');
  // Output: (1 : Apple, 2 : Banana)

  // Clear the list
  linkedList.clear();
  print('Is the list empty after clearing? ${linkedList.isEmpty}'); // Output: true
}