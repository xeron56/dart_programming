import 'dart:collection';

void main() {
  // Creating a HashMap
  final Map<int, String> planets = HashMap();
  
  // Adding key-value pairs to the map
  planets[1] = 'Mercury';
  planets[2] = 'Venus';
  planets[3] = 'Earth';
  planets[4] = 'Mars';
  
  // Properties
  // 1. entries
  final Iterable<MapEntry<int, String>> entries = planets.entries;
  print('Entries: $entries');
  
  // 2. hashCode
  final int hashCode = planets.hashCode;
  print('Hash Code: $hashCode');
  
  // 3. isEmpty
  final bool isEmpty = planets.isEmpty;
  print('Is Empty: $isEmpty');
  
  // 4. isNotEmpty
  final bool isNotEmpty = planets.isNotEmpty;
  print('Is Not Empty: $isNotEmpty');
  
  // 5. keys
  final Iterable<int> keys = planets.keys;
  print('Keys: $keys');
  
  // 6. length
  final int length = planets.length;
  print('Length: $length');
  
  // 7. runtimeType
  final Type type = planets.runtimeType;
  print('Runtime Type: $type');
  
  // 8. values
  final Iterable<String> values = planets.values;
  print('Values: $values');
}
