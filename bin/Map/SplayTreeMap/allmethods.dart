import 'dart:collection';

void main() {
  // Creating a SplayTreeMap
  final map = SplayTreeMap<int, String>((a, b) => a.compareTo(b));
  
  // Adding key-value pairs
  map.addAll({3: 'C', 1: 'A', 2: 'B'});
  print('Initial Map: $map');
  
  // Adding individual entries
  map[4] = 'D';
  map.putIfAbsent(5, () => 'E');
  print('Map after adding entries: $map');
  
  // Adding entries from another map
  final additionalMap = {6: 'F', 7: 'G'};
  map.addEntries(additionalMap.entries);
  print('Map after adding entries from another map: $map');
  
  // Removing entries
  map.remove(2);
  print('Map after removing entry with key 2: $map');
  
  // Removing entries based on a condition
  map.removeWhere((key, value) => value.startsWith('C'));
  print('Map after removing entries starting with "C": $map');
  
  // Clearing the map
  map.clear();
  print('Map after clearing: $map');
  
  // Checking for key existence
  final containsKey = map.containsKey(3);
  print('Does map contain key 3? $containsKey');
  
  // Checking for value existence
  final containsValue = map.containsValue('G');
  print('Does map contain value "G"? $containsValue');
  
  // Accessing first and last keys
  final firstKey = map.firstKey;
  final lastKey = map.lastKey;
  print('First Key: $firstKey, Last Key: $lastKey');
  
  // Iterating over map entries
  map.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
  
  // Updating values based on a condition
  map.updateAll((key, value) => value.toUpperCase());
  print('Map after updating values: $map');
  
  // Mapping keys and values
  final mappedKeys = map.keys.map((key) => key * 2);
  final mappedValues = map.values.map((value) => value.toLowerCase());
  print('Mapped Keys: $mappedKeys, Mapped Values: $mappedValues');
  
  // Converting map to string
  final mapString = map.toString();
  print('String representation of map: $mapString');
}
