import 'dart:collection';

void main() {
  // Create a SplayTreeSet
  final splayTreeSet = SplayTreeSet<int>();

  // Properties
  splayTreeSet.addAll([5, 2, 8, 1, 10]); // Adding elements to the set

  // Property 1: first
  final firstElement = splayTreeSet.first;
  print('First element: $firstElement');

  // Property 2: isEmpty
  final isEmpty = splayTreeSet.isEmpty;
  print('Is the set empty? $isEmpty');

  // Property 3: isNotEmpty
  final isNotEmpty = splayTreeSet.isNotEmpty;
  print('Is the set not empty? $isNotEmpty');

  // Property 4: iterator
  final iterator = splayTreeSet.iterator;
  print('Iterator: $iterator');

  // Property 5: last
  final lastElement = splayTreeSet.last;
  print('Last element: $lastElement');

  // Property 6: length
  final length = splayTreeSet.length;
  print('Length of the set: $length');

  // Property 7: runtimeType
  final runtimeType = splayTreeSet.runtimeType;
  print('Runtime type of the set: $runtimeType');

  // Property 8: single
  try {
    final singleElement = splayTreeSet.single;
    print('Single element: $singleElement');
  } catch (e) {
    print('Exception thrown: $e');
  }
}
