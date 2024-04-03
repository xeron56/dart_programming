import 'dart:collection';

void main() {
  // Create a SplayTreeSet
  final splayTreeSet = SplayTreeSet<int>();

  // Methods

  /// Method 1: add
  /// Adds the specified [element] to the set.
  splayTreeSet.add(5);
  splayTreeSet.addAll([2, 8, 1, 10]);

  /// Method 2: any
  /// Checks if any element in the set satisfies the given [test].
  final anyElement = splayTreeSet.any((element) => element % 2 == 0);
  print('Does any element satisfy the condition? $anyElement');

  /// Method 3: clear
  /// Removes all elements from the set.
  splayTreeSet.clear();
  print('After clearing, the set is empty: ${splayTreeSet.isEmpty}');

  /// Method 4: contains
  /// Checks if the set contains the specified [element].
  final containsElement = splayTreeSet.contains(5);
  print('Does the set contain 5? $containsElement');

  /// Method 5: containsAll
  /// Checks if the set contains all the elements in the specified [collection].
  final containsAllElements = splayTreeSet.containsAll([2, 8]);
  print('Does the set contain all elements [2, 8]? $containsAllElements');

  /// Method 6: difference
  /// Returns a new set with the elements that are in this set but not in the [other] set.
  final differenceSet = splayTreeSet.difference({2, 8});
  print('Difference set: $differenceSet');

  /// Method 7: elementAt
  /// Returns the element at the specified [index] in the set.
  final elementAt = splayTreeSet.elementAt(0);
  print('Element at index 0: $elementAt');

  /// Method 8: every
  /// Checks if every element in the set satisfies the given [test].
  final everyElement = splayTreeSet.every((element) => element < 20);
  print('Are all elements less than 20? $everyElement');

  /// Method 9: expand
  /// Expands each element of the set into zero or more elements.
  final expandedSet = splayTreeSet.expand((element) => [element, element + 1]);
  print('Expanded set: $expandedSet');

  /// Method 10: firstWhere
  /// Returns the first element that satisfies the given [test].
  /// If no element satisfies the test, returns the result of [orElse].
  final firstWhereElement = splayTreeSet.firstWhere((element) => element > 5, orElse: () => -1);
  print('First element greater than 5: $firstWhereElement');

  /// Method 11: fold
  /// Combines the elements of the set using the specified [combine] function.
  final foldedValue = splayTreeSet.fold(0, (previousValue, element) => previousValue + element);
  print('Sum of all elements: $foldedValue');

  /// Method 12: forEach
  /// Applies the specified [action] to each element in the set.
  splayTreeSet.forEach((element) => print('Element: $element'));

  /// Method 13: intersection
  /// Returns a new set with the elements that are common to both this set and the [other] set.
  final intersectionSet = splayTreeSet.intersection({5, 8});
  print('Intersection set: $intersectionSet');

  /// Method 14: join
  /// Converts each element to a [String] and concatenates them using the specified [separator].
  final joinedElements = splayTreeSet.join(', ');
  print('Joined elements: $joinedElements');

  /// Method 15: lastWhere
  /// Returns the last element that satisfies the given [test].
  /// If no element satisfies the test, returns the result of [orElse].
  final lastWhereElement = splayTreeSet.lastWhere((element) => element < 5, orElse: () => -1);
  print('Last element less than 5: $lastWhereElement');

  /// Method 16: lookup
  /// Returns the element in the set that is equal to the specified [object].
  final lookupElement = splayTreeSet.lookup(5);
  print('Element lookup for 5: $lookupElement');

  /// Method 17: map
  /// Applies the specified [transform] function to each element in the set and returns a new set with the results.
  final mappedSet = splayTreeSet.map((element) => element * 2);
  print('Mapped set: $mappedSet');

  /// Method 18: reduce
  /// Combines the elements of the set using the specified [combine] function.
  final reducedValue = splayTreeSet.reduce((value, element) => value + element);
  print('Reduced value: $reducedValue');

  /// Method 19: remove
  /// Removes the specified [element] from the set.
  final removedElement = splayTreeSet.remove(5);
  print('Removed element 5: $removedElement');

  /// Method 20: removeAll
  /// Removes all elements in the specified [collection] from the set.
  splayTreeSet.removeAll([2, 8]);
  print('After removing all elements [2, 8], the set is: $splayTreeSet');

  /// Method 21: removeWhere
  /// Removes all elements that satisfy the given [test] from the set.
  splayTreeSet.removeWhere((element) => element % 2 != 0);
  print('After removing odd elements, the set is: $splayTreeSet');

  /// Method 22: retainAll
  /// Removes all elements from the set that are not in the specified [collection].
  splayTreeSet.retainAll([1, 10]);
  print('After retaining elements [1, 10], the set is: $splayTreeSet');

  /// Method 23: retainWhere
  /// Removes all elements that do not satisfy the given [test] from the set.
  splayTreeSet.retainWhere((element) => element < 10);
  print('After retaining elements less than 10, the set is: $splayTreeSet');

  /// Method 24: singleWhere
  /// Returns the single element that satisfies the given [test].
  /// If no element satisfies the test or more than one element satisfies the test, throws an exception.
  try {
    final singleWhereElement = splayTreeSet.singleWhere((element) => element == 1);
    print('Single element where element equals 1: $singleWhereElement');
  } catch (e) {
    print('Exception thrown: $e');
  }

  /// Method 25: skip
  /// Returns a new set with the first [count] elements skipped.
  final skippedSet = splayTreeSet.skip(2);
  print('Skipped set: $skippedSet');

  /// Method 26: skipWhile
  /// Returns a new set with the leading elements skipped while they satisfy the given [test].
  final skippedWhileSet = splayTreeSet.skipWhile((element) => element < 5);
  print('Skipped while set: $skippedWhileSet');

  /// Method 27: take
  /// Returns a new set with the first [count] elements taken.
  final takenSet = splayTreeSet.take(2);
  print('Taken set: $takenSet');

  /// Method 28: takeWhile
  /// Returns a new set with the leading elements taken while they satisfy the given [test].
  final takenWhileSet = splayTreeSet.takeWhile((element) => element < 5);
  print('Taken while set: $takenWhileSet');

  /// Method 29: toList
  /// Returns a new list containing all the elements of the set in the same order.
  final list = splayTreeSet.toList();
  print('Converted set to list: $list');

  /// Method 30: toSet
  /// Returns a new set containing all the elements of the set.
  final set = splayTreeSet.toSet();
  print('Converted set to another set: $set');

  /// Method 31: union
  /// Returns a new set with the elements that are in either this set or the [other] set.
  final unionSet = splayTreeSet.union({5, 8});
  print('Union set: $unionSet');

  /// Method 32: where
  /// Returns a new set with all elements that satisfy the given [test].
  final whereSet = splayTreeSet.where((element) => element > 5);
  print('Filtered set: $whereSet');
}
