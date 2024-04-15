

import 'dart:collection';

void main() {
  // Create a SplayTreeSet with a custom compare function
  final customCompareSet = SplayTreeSet<String>((a, b) => a.compareTo(b));
  customCompareSet.addAll(['banana', 'apple', 'orange']);
  print(customCompareSet); // {apple, banana, orange}

  // Create a SplayTreeSet from an existing iterable
  final fromIterableSet = SplayTreeSet.from(['dog', 'cat', 'bird']);
  print(fromIterableSet); // {bird, cat, dog}

  // Create a SplayTreeSet from elements directly
  final ofElementsSet = SplayTreeSet.of(['summer', 'winter', 'spring']);
  print(ofElementsSet); // {spring, summer, winter}
}