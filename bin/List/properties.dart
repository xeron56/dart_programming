import 'dart:collection';

void main(){
  // Creating a sample list
final myList = [10, 20, 30, 40, 50];

// Accessing properties
print(myList.first); // Output: 10
print(myList.last); // Output: 50
print(myList.length); // Output: 5
print(myList.isEmpty); // Output: false
print(myList.isNotEmpty); // Output: true
print(myList.hashCode); // Output: some integer value
print(myList.runtimeType); // Output: _GrowableList<int>

// Iterating over the list
print('Iterating over the list:');
for (final element in myList) {
  print(element);
}

// Accessing the iterator
final iterator = myList.iterator;
print('\nIterating using the iterator:');
while (iterator.moveNext()) {
  print(iterator.current);
}

// Accessing the reversed list
print('\nReversed list:');
for (final element in myList.reversed) {
  print(element);
}

// Accessing the single element
print('\nSingle element: ${myList.single}'); // Throws if list has more than one element

// Creating a new list from the original
final newList = [...myList];
print('\nNew list: $newList');
}