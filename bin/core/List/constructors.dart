import 'dart:collection';

void main(){
  // List.empty()
final emptyList = List<int>.empty();
print(emptyList); // Output: []

// List.filled()
final fixedLengthList = List<int>.filled(5, 0);
print(fixedLengthList); // Output: [0, 0, 0, 0, 0]

// List.from()
final iterableList = List<String>.from(['apple', 'banana', 'cherry']);
print(iterableList); // Output: [apple, banana, cherry]

// List.generate()
final generatedList = List<int>.generate(10, (index) => index * 2);
print(generatedList); // Output: [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

// List.of()
final listFromIterable = List<num>.of([1, 2.5, 3, 4.0]);
print(listFromIterable); // Output: [1, 2.5, 3, 4.0]

// List.unmodifiable()
final unmodifiableList = List<String>.unmodifiable(['one', 'two', 'three']);
print(unmodifiableList); // Output: [one, two, three]
// unmodifiableList[0] = 'four'; // This will throw an UnsupportedError

// Mixing constructors
final mixedList = List<int>.from([1, 2, 3], growable: false)
  ..addAll([4, 5, 6])
  ..insert(0, 0)
  ..removeAt(3);
print(mixedList); // Output: [0, 1, 2, 5, 6]

// Casting lists
// final sourceList = [1, 2.5, 3, 4.0];
// final castedList = List<int>.castFrom(sourceList);
// print(castedList); // Output: [1, 2, 3, 4]

// Copying ranges between lists
final targetList = [10, 20, 30, 40, 50];
final sourceRange = [60, 70, 80];
List.copyRange(targetList, 2, sourceRange, 0, 2);
print(targetList); // Output: [10, 20, 60, 70, 50]
}