import 'dart:collection';

void main() {
  // Create a base set
  final baseSet = {'apple', 'banana', 'orange'};
  
  // Create an UnmodifiableSetView from the base set
  final unmodifiableSetView = UnmodifiableSetView(baseSet);

  // Methods

  // 1. add
  // This operation is not supported by an unmodifiable set.
  // unmodifiableSetView.add('pear');

  // 2. addAll
  // This operation is not supported by an unmodifiable set.
  // unmodifiableSetView.addAll(['grape', 'kiwi']);

  // 3. any
  print('Any orange: ${unmodifiableSetView.any((element) => element == 'orange')}');

  // 4. cast
  final castedSet = unmodifiableSetView.cast<String>();
  print('Casted set: $castedSet');

  // 5. clear
  // This operation is not supported by an unmodifiable set.
  // unmodifiableSetView.clear();

  // 6. contains
  print('Contains banana: ${unmodifiableSetView.contains('banana')}');

  // 7. containsAll
  print('Contains all [apple, banana]: ${unmodifiableSetView.containsAll(['apple', 'banana'])}');

  // 8. difference
  final differenceSet = unmodifiableSetView.difference({'apple'});
  print('Difference set: $differenceSet');

  // 9. elementAt
  print('Element at index 1: ${unmodifiableSetView.elementAt(1)}');

  // 10. every
  print('Every element contains "a": ${unmodifiableSetView.every((element) => element.contains('a'))}');

  // 11. expand
  final expandedSet = unmodifiableSetView.expand((element) => element.split(''));
  print('Expanded set: $expandedSet');

  // 12. firstWhere
  print('First element containing "a": ${unmodifiableSetView.firstWhere((element) => element.contains('a'))}');

  // 13. fold
  final foldedValue = unmodifiableSetView.fold<int>(0, (previousValue, element) => previousValue + element.length);
  print('Folded value: $foldedValue');

  // 14. followedBy
  final followedBySet = unmodifiableSetView.followedBy({'grape'});
  print('Followed by set: $followedBySet');

  // 15. forEach
  unmodifiableSetView.forEach((element) => print('Element: $element'));

  // 16. intersection
  final intersectionSet = unmodifiableSetView.intersection({'apple', 'orange'});
  print('Intersection set: $intersectionSet');

  // 17. join
  final joinedString = unmodifiableSetView.join(', ');
  print('Joined string: $joinedString');

  // 18. lastWhere
  print('Last element containing "a": ${unmodifiableSetView.lastWhere((element) => element.contains('a'))}');

  // 19. map
  final mappedSet = unmodifiableSetView.map((element) => element.toUpperCase());
  print('Mapped set: $mappedSet');

  // 20. reduce
  final reducedValue = unmodifiableSetView.reduce((value, element) => value + element);
  print('Reduced value: $reducedValue');

  // 21. remove
  // This operation is not supported by an unmodifiable set.
  // unmodifiableSetView.remove('banana');

  // 22. removeAll
  // This operation is not supported by an unmodifiable set.
  // unmodifiableSetView.removeAll({'apple', 'banana'});

  // 23. removeWhere
  // This operation is not supported by an unmodifiable set.
  // unmodifiableSetView.removeWhere((element) => element.length < 6);

  // 24. retainAll
  // This operation is not supported by an unmodifiable set.
  // unmodifiableSetView.retainAll({'banana', 'orange'});

  // 25. retainWhere
  // This operation is not supported by an unmodifiable set.
  // unmodifiableSetView.retainWhere((element) => element.contains('a'));

  // 26. singleWhere
  // Throws StateError if no or more than one element satisfy the condition
  try {
    print('Single element containing "e": ${unmodifiableSetView.singleWhere((element) => element.contains('e'))}');
  } catch (e) {
    print('Error: $e');
  }

  // 27. skip
  final skippedSet = unmodifiableSetView.skip(1);
  print('Skipped set: $skippedSet');

  // 28. skipWhile
  final skippedWhileSet = unmodifiableSetView.skipWhile((element) => element != 'banana');
  print('Skipped while set: $skippedWhileSet');

  // 29. take
  final takenSet = unmodifiableSetView.take(2);
  print('Taken set: $takenSet');

  // 30. takeWhile
  final takenWhileSet = unmodifiableSetView.takeWhile((element) => element != 'banana');
  print('Taken while set: $takenWhileSet');

  // 31. toList
  final listFromSet = unmodifiableSetView.toList();
  print('List from set: $listFromSet');

  // 32. toSet
  final setFromSet = unmodifiableSetView.toSet();
  print('Set from set: $setFromSet');

  // 33. union
  final unionSet = unmodifiableSetView.union({'grape'});
  print('Union set: $unionSet');

  // 34. where
  final filteredSet = unmodifiableSetView.where((element) => element.length > 5);
  print('Filtered set: $filteredSet');

  // 35. whereType
  final whereTypeSet = unmodifiableSetView.whereType<String>();
  print('Where type set: $whereTypeSet');
}
