import 'dart:collection';

void main() {
  // Create a HashSet
  final hashSet = HashSet<int>();

  // Check if the set is empty
  print('Is the set empty? ${hashSet.isEmpty}');

  // Add elements to the set
  hashSet.addAll([1, 2, 3, 4, 5]);

  // Print the first element
  print('First element: ${hashSet.first}');

  // Print the last element
  print('Last element: ${hashSet.last}');

  // Print the number of elements in the set
  print('Number of elements: ${hashSet.length}');

  // Check if the set is not empty
  print('Is the set not empty? ${hashSet.isNotEmpty}');

  // Create an iterator and print all elements
  final iterator = hashSet.iterator;
  while (iterator.moveNext()) {
    print('Current element: ${iterator.current}');
  }

  // Convert the set to a list and print it
  final listFromSet = hashSet.toList();
  print('List from set: $listFromSet');

  // Convert the set to a set (no effect) and print it
  final setFromSet = hashSet.toSet();
  print('Set from set: $setFromSet');

  // Print the type of the set
  print('Type of set: ${hashSet.runtimeType}');
}
