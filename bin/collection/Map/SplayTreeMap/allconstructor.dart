import 'dart:collection';

void main() {
  // Using the default constructor
  final defaultMap = SplayTreeMap<int, String>((a, b) => a.compareTo(b));
  defaultMap.addAll({3: 'C', 1: 'A', 2: 'B'});
  print('Default SplayTreeMap: $defaultMap');

  // Using the constructor SplayTreeMap.from
  // final fromMap = {'a': 1, 'b': 2, 'c': 3};
  // final fromConstructor = SplayTreeMap.from(fromMap, (a, b) => a.compareTo(b));
  // print('SplayTreeMap.from: $fromConstructor');

  // Using the factory constructor SplayTreeMap.fromIterable
  final iterable = [1, 2, 3, 4, 5];
  final fromIterable = SplayTreeMap.fromIterable(
    iterable,
    key: (element) => element,
    value: (element) => 'Value $element',
    compare: (a, b) => a.compareTo(b),
  );
  print('SplayTreeMap.fromIterable: $fromIterable');

  // Using the factory constructor SplayTreeMap.fromIterables
  final keys = [1, 2, 3];
  final values = ['one', 'two', 'three'];
  final fromIterables = SplayTreeMap.fromIterables(
    keys,
    values,
    (a, b) => a.compareTo(b),
  );
  print('SplayTreeMap.fromIterables: $fromIterables');

  // Using the factory constructor SplayTreeMap.of
  final ofMap = {'x': 10, 'y': 20, 'z': 30};
  final ofConstructor = SplayTreeMap.of(ofMap, (a, b) => a.compareTo(b));
  print('SplayTreeMap.of: $ofConstructor');
}
