import 'dart:collection';

void main() {
  // Creating a LinkedHashMap
  LinkedHashMap<int, String> linkedHashMap = LinkedHashMap();

  // Adding entries to the map
  linkedHashMap[1] = 'One';
  linkedHashMap[2] = 'Two';
  linkedHashMap[3] = 'Three';

  // Printing all properties
  print('Entries:');
  for (var entry in linkedHashMap.entries) {
    print('Key: ${entry.key}, Value: ${entry.value}');
  }

  print('HashCode: ${linkedHashMap.hashCode}');
  print('Is Empty: ${linkedHashMap.isEmpty}');
  print('Is Not Empty: ${linkedHashMap.isNotEmpty}');
  print('Keys: ${linkedHashMap.keys}');
  print('Length: ${linkedHashMap.length}');
  print('RuntimeType: ${linkedHashMap.runtimeType}');
  print('Values: ${linkedHashMap.values}');
}
