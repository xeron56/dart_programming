import 'dart:collection';

void main() {
  // Creating an empty HashMap
  final Map<int, String> planets = HashMap();

  // Adding key-value pairs to the map
  planets.addAll({1: 'Mercury', 2: 'Venus'});
  print('After adding key-value pairs: $planets');

  // Adding entries to the map
  final List<MapEntry<int, String>> newEntries = [MapEntry(3, 'Earth'), MapEntry(4, 'Mars')];
  planets.addEntries(newEntries);
  print('After adding entries: $planets');

  // Casting the map keys and values
  final Map<String, String> castedMap = planets.cast<String, String>();
  print('Casted map: $castedMap');

  // Clearing the map
  castedMap.clear();
  print('After clearing the map: $castedMap');

  // Checking if a key exists
  final bool containsKey = planets.containsKey(2);
  print('Contains key 2: $containsKey');

  // Checking if a value exists
  final bool containsValue = planets.containsValue('Earth');
  print('Contains value "Earth": $containsValue');

  // Iterating over key-value pairs
  planets.forEach((key, value) {
    print('Planet $key: $value');
  });

  // Mapping values to a new map
  final Map<String, String> mappedPlanets = planets.map((key, value) => MapEntry(value, 'Planet $key'));
  print('Mapped planets: $mappedPlanets');

  // Using putIfAbsent
  planets.putIfAbsent(5, () => 'Jupiter');
  print('After using putIfAbsent: $planets');

  // Removing a key-value pair
  final String? removedValue = planets.remove(4);
  print('Removed value: $removedValue, Map after removal: $planets');

  // Removing entries based on condition
  planets.removeWhere((key, value) => key % 2 == 0);
  print('Map after removeWhere: $planets');

  // Converting map to string
  final String mapString = planets.toString();
  print('String representation of map: $mapString');

  // Updating a value
  planets.update(1, (value) => 'Shrouded $value');
  print('Map after update: $planets');

  // Updating all values
  planets.updateAll((key, value) => 'Inhabited $value');
  print('Map after updateAll: $planets');
}
