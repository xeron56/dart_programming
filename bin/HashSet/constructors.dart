import 'dart:collection';

void main() {
  // Using the default constructor
  final defaultHashSet = HashSet<String>();

  // Using the HashSet.from constructor with an iterable
  final iterableHashSet = HashSet.from(['apple', 'banana', 'orange']);

  // Using the HashSet.identity constructor
  final identityHashSet = HashSet.identity();

  // Using the HashSet.of constructor with an iterable
  final ofHashSet = HashSet.of(['dog', 'cat', 'bird']);

  // Add elements to the defaultHashSet
  defaultHashSet.addAll(['one', 'two', 'three']);

  // Display elements in each HashSet
  print('defaultHashSet: $defaultHashSet');
  print('iterableHashSet: $iterableHashSet');
  print('identityHashSet: $identityHashSet');
  print('ofHashSet: $ofHashSet');
}
