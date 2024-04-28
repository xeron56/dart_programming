import 'dart:collection';

void main() {
  // Create a HashSet
  final hashSet = HashSet<int>();

  // Add elements to the set
  hashSet.addAll([1, 2, 3, 4, 5]);

  // Print the elements of the set
  print('Initial set: $hashSet');

  // Add a single element to the set
  hashSet.add(6);
  print('After adding 6: $hashSet');

  // Add multiple elements to the set
  hashSet.addAll([7, 8, 9]);
  print('After adding 7, 8, 9: $hashSet');

  // Check if the set contains a specific value
  print('Does the set contain 3? ${hashSet.contains(3)}');

  // Check if the set contains all elements of another iterable
  final containsAll = hashSet.containsAll([2, 4, 6]);
  print('Does the set contain all elements of [2, 4, 6]? $containsAll');

  // Remove a single element from the set
  hashSet.remove(5);
  print('After removing 5: $hashSet');

  // Remove multiple elements from the set
  hashSet.removeAll([7, 8]);
  print('After removing 7, 8: $hashSet');

  // Remove elements that satisfy a condition
  hashSet.removeWhere((element) => element.isEven);
  print('After removing even elements: $hashSet');

  // Retain elements that satisfy a condition
  hashSet.retainWhere((element) => element < 4);
  print('After retaining elements less than 4: $hashSet');

  // Remove all elements from the set
  hashSet.clear();
  print('After clearing the set: $hashSet');
}
