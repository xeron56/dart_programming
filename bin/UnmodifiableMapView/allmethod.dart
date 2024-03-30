import 'dart:collection';

void main() {
  // Create a base map
  final baseMap = <int, String>{1: 'Mars', 2: 'Mercury', 3: 'Venus'};
  final unmodifiableMapView = UnmodifiableMapView(baseMap);

  // Method: addAll
  try {
    unmodifiableMapView.addAll({4: 'Earth'}); // Throws an error
  } catch (e) {
    print('Error occurred: $e');
  }

  // Method: addEntries
  try {
    unmodifiableMapView.addEntries([MapEntry(4, 'Earth')]); // Throws an error
  } catch (e) {
    print('Error occurred: $e');
  }

  // Method: cast
  final castedMap = unmodifiableMapView.cast<String, String>();
  print('Casted Map: $castedMap');

  // Method: clear
  try {
    unmodifiableMapView.clear(); // Throws an error
  } catch (e) {
    print('Error occurred: $e');
  }

  // Method: containsKey
  print('Contains key 2? ${unmodifiableMapView.containsKey(2)}');

  // Method: containsValue
  print('Contains value "Earth"? ${unmodifiableMapView.containsValue("Earth")}');

  // Method: forEach
  unmodifiableMapView.forEach((key, value) {
    print('$key: $value');
  });

  // Method: map
  final mapped = unmodifiableMapView.map((key, value) => MapEntry('$key', '$value'));
  print('Mapped: $mapped');

  // Method: putIfAbsent
  try {
    unmodifiableMapView.putIfAbsent(4, () => 'Earth'); // Throws an error
  } catch (e) {
    print('Error occurred: $e');
  }

  // Method: remove
  try {
    unmodifiableMapView.remove(1); // Throws an error
  } catch (e) {
    print('Error occurred: $e');
  }

  // Method: removeWhere
  try {
    unmodifiableMapView.removeWhere((key, value) => key == 1); // Throws an error
  } catch (e) {
    print('Error occurred: $e');
  }

  // Method: toString
  print('Map as string: $unmodifiableMapView');

  // Method: update
  try {
    unmodifiableMapView.update(1, (value) => 'Earth'); // Throws an error
  } catch (e) {
    print('Error occurred: $e');
  }

  // Method: updateAll
  try {
    unmodifiableMapView.updateAll((key, value) => value.toUpperCase()); // Throws an error
  } catch (e) {
    print('Error occurred: $e');
  }
}
