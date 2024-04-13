import 'dart:collection';

void main()
{
  // Creating a sample list
final myList = [10, 20, 30, 40, 50];

// add()
myList.add(60);
print('After add(): $myList'); // Output: [10, 20, 30, 40, 50, 60]

// addAll()
myList.addAll([70, 80, 90]);
print('After addAll(): $myList'); // Output: [10, 20, 30, 40, 50, 60, 70, 80, 90]

// any()
final anyGreaterThan50 = myList.any((element) => element > 50);
print('Any element greater than 50? $anyGreaterThan50'); // Output: true

// asMap()
final myListAsMap = myList.asMap();
print('List as Map: $myListAsMap'); // Output: {0: 10, 1: 20, 2: 30, 3: 40, 4: 50, 5: 60, 6: 70, 7: 80, 8: 90}

// cast()
final myListOfStrings = myList.cast<String>();
print('List of Strings: $myListOfStrings'); // Output: [10, 20, 30, 40, 50, 60, 70, 80, 90]

// clear()
myList.clear();
print('After clear(): $myList'); // Output: []

// contains()
final myNewList = [10, 20, 30, 40, 50];
print('myNewList contains 30? ${myNewList.contains(30)}'); // Output: true

// elementAt()
final elementAt3 = myNewList.elementAt(3);
print('Element at index 3: $elementAt3'); // Output: 40

// every()
final allGreaterThan0 = myNewList.every((element) => element > 0);
print('All elements greater than 0? $allGreaterThan0'); // Output: true

// expand()
final expandedList = myNewList.expand((element) => [element, element * 10]);
print('Expanded list: $expandedList'); // Output: [10, 100, 20, 200, 30, 300, 40, 400, 50, 500]

// fillRange()
myNewList.fillRange(1, 4, 0);
print('After fillRange(): $myNewList'); // Output: [10, 0, 0, 0, 50]

// firstWhere()
final firstEvenNumber = myNewList.firstWhere((element) => element.isEven, orElse: () => -1);
print('First even number: $firstEvenNumber'); // Output: 10

// fold()
final sum = myNewList.fold(0, (previousValue, element) => previousValue + element);
print('Sum of elements: $sum'); // Output: 60

// followedBy()
final followedByList = myNewList.followedBy([60, 70, 80]);
print('Followed by list: $followedByList'); // Output: (10, 0, 0, 0, 50, 60, 70, 80)

// forEach()
myNewList.forEach((element) => print('Element: $element'));

// getRange()
final rangeList = myNewList.getRange(1, 4).toList();
print('Range list: $rangeList'); // Output: [0, 0, 0]

// indexOf()
final indexOfElement = myNewList.indexOf(0);
print('Index of 0: $indexOfElement'); // Output: 1

// indexWhere()
final indexWhereEven = myNewList.indexWhere((element) => element.isEven);
print('Index of first even number: $indexWhereEven'); // Output: 0

// insert()
myNewList.insert(2, 25);
print('After insert(): $myNewList'); // Output: [10, 0, 25, 0, 0, 50]

// insertAll()
myNewList.insertAll(4, [35, 45]);
print('After insertAll(): $myNewList'); // Output: [10, 0, 25, 0, 35, 45, 50]

// join()
final joinedString = myNewList.join(', ');
print('Joined string: $joinedString'); // Output: 10, 0, 25, 0, 35, 45, 50

// lastIndexOf()
final lastIndexOfElement = myNewList.lastIndexOf(0);
print('Last index of 0: $lastIndexOfElement'); // Output: 3

// lastIndexWhere()
final lastIndexWhereEven = myNewList.lastIndexWhere((element) => element.isEven);
print('Last index of even number: $lastIndexWhereEven'); // Output: 6

// lastWhere()
final lastEvenNumber = myNewList.lastWhere((element) => element.isEven, orElse: () => -1);
print('Last even number: $lastEvenNumber'); // Output: 50

// remove()
myNewList.remove(0);
print('After remove(): $myNewList'); // Output: [10, 25, 0, 35, 45, 50]

// removeAt()
myNewList.removeAt(2);
print('After removeAt(): $myNewList'); // Output: [10, 25, 35, 45, 50]

// removeLast()
myNewList.removeLast();
print('After removeLast(): $myNewList'); // Output: [10, 25, 35, 45]

// removeRange()
myNewList.removeRange(1, 3);
print('After removeRange(): $myNewList'); // Output: [10, 45]

// removeWhere()
myNewList.removeWhere((element) => element.isEven);
print('After removeWhere(): $myNewList'); // Output: [45]

// replaceRange()
myNewList.replaceRange(0, 1, [50, 60]);
print('After replaceRange(): $myNewList'); // Output: [50, 60]

// retainWhere()
myNewList.retainWhere((element) => element > 50);
print('After retainWhere(): $myNewList'); // Output: [60]

// setAll()
myNewList.setAll(0, [70, 80, 90]);
print('After setAll(): $myNewList'); // Output: [70, 80, 90]

// setRange()
myNewList.setRange(1, 3, [100, 110]);
print('After setRange(): $myNewList'); // Output: [70, 100, 110]

// shuffle()
myNewList.shuffle();
print('After shuffle(): $myNewList'); // Output: [110, 100, 70]

// skip()
final skippedList = myNewList.skip(1).toList();
print('Skipped list: $skippedList'); // Output: [100, 70]

// skipWhile()
final skippedWhileList = myNewList.skipWhile((element) => element > 100).toList();
print('Skipped while list: $skippedWhileList'); // Output: [70]

// sort()
myNewList.sort();
print('After sort(): $myNewList'); // Output: [70, 100, 110]

// sublist()
final sublist = myNewList.sublist(1, 3);
print('Sublist: $sublist'); // Output: [100, 110]

// take()
final takenList = myNewList.take(2).toList();
print('Taken list: $takenList'); // Output: [70, 100]

// takeWhile()
final takenWhileList = myNewList.takeWhile((element) => element < 105).toList();
print('Taken while list: $takenWhileList'); // Output: [70, 100]

// toList()
final listFromIterable = [1, 2, 3, 4, 5].toList(growable: false);
print('List from Iterable: $listFromIterable'); // Output: [1, 2, 3, 4, 5]

// toSet()
final setFromList = myNewList.toSet();
print('Set from List: $setFromList'); // Output: {70, 100, 110}

// where()
final evenNumbersList = myNewList.where((element) => element.isEven).toList();
print('Even numbers list: $evenNumbersList'); // Output: [70, 100, 110]

// whereType()
final myListOfObjects = [10, 'hello', 20.5, true];
final listOfInts = myListOfObjects.whereType<int>().toList();
print('List of Integers: $listOfInts'); // Output: [10, 20]
}