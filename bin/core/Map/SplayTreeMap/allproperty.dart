import 'dart:collection';

void main() {
  // Creating a SplayTreeMap
  final map = SplayTreeMap<int, String>((a, b) => a.compareTo(b));
  map.addAll({3: 'C', 1: 'A', 2: 'B'});

  // Properties
  print('Entries: ${map.entries}'); // Returns an iterable of all key-value pairs in the map.
  print('Hash Code: ${map.hashCode}'); // Returns the hash code of the map.
  print('Is Empty: ${map.isEmpty}'); // Returns true if the map is empty, false otherwise.
  print('Is Not Empty: ${map.isNotEmpty}'); // Returns true if the map is not empty, false otherwise.
  print('Keys: ${map.keys}'); // Returns an iterable of all keys in the map.
  print('Length: ${map.length}'); // Returns the number of key-value pairs in the map.
  print('Runtime Type: ${map.runtimeType}'); // Returns the runtime type of the map.
  print('Values: ${map.values}'); // Returns an iterable of all values in the map.

  // Modifying the map
  map[4] = 'D'; // Adds or updates the value associated with the key 4.
  map.remove(1); // Removes the key-value pair with the key 1.
  map.update(2, (value) => 'BB'); // Updates the value associated with the key 2 using the provided update function.

  // Displaying the modified map
  print('Modified Map: $map');

  // Accessing properties after modification
  print('Entries: ${map.entries}');
  print('Hash Code: ${map.hashCode}');
  print('Is Empty: ${map.isEmpty}');
  print('Is Not Empty: ${map.isNotEmpty}');
  print('Keys: ${map.keys}');
  print('Length: ${map.length}');
  print('Runtime Type: ${map.runtimeType}');
  print('Values: ${map.values}');
}
