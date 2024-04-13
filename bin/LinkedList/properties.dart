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
  linkedList.addAll([
    EntryItem(1, 'Apple'),
    EntryItem(2, 'Banana'),
    EntryItem(3, 'Cherry'),
    EntryItem(4, 'Date'),
    EntryItem(5, 'Elderberry'),
  ]);

  // Access the first and last elements
  print('First element: ${linkedList.first}'); // Output: 1 : Apple
  print('Last element: ${linkedList.last}'); // Output: 5 : Elderberry

  // Check if the list is empty
  print('Is the list empty? ${linkedList.isEmpty}'); // Output: false
  print('Is the list not empty? ${linkedList.isNotEmpty}'); // Output: true

  // Iterate over the list
  print('Iterating over the list:');
  for (var entry in linkedList) {
    print(entry);
  }
  // Output:
  // 1 : Apple
  // 2 : Banana
  // 3 : Cherry
  // 4 : Date
  // 5 : Elderberry

  // Get the number of elements in the list
  print('Length of the list: ${linkedList.length}'); // Output: 5

  // Get the only element in the list (throws an exception if the list has more than one element)
  print('Single element: ${linkedList.single}'); // Output: 1 : Apple

  // Remove an element from the list
  linkedList.remove(linkedList.elementAt(2)); // Remove the 3rd element (Cherry)
  print('List after removing an element: $linkedList');
  // Output: (1 : Apple, 2 : Banana, 4 : Date, 5 : Elderberry)

  // Clear the list
  linkedList.clear();
  print('Is the list empty after clearing? ${linkedList.isEmpty}'); // Output: true
}