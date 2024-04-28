import 'dart:collection';

void main() {
  // Create a base map
  final baseMap = <int, String>{1: 'Mars', 2: 'Mercury', 3: 'Venus'};
  final unmodifiableMapView = UnmodifiableMapView(baseMap);

  // Access properties of UnmodifiableMapView
  print('Map entries:');
  for (var entry in unmodifiableMapView.entries) {
    print('${entry.key}: ${entry.value}');
  }

  print('Hash code of the map: ${unmodifiableMapView.hashCode}');
  print('Is the map empty? ${unmodifiableMapView.isEmpty}');
  print('Is the map not empty? ${unmodifiableMapView.isNotEmpty}');
  print('Keys in the map: ${unmodifiableMapView.keys}');
  print('Length of the map: ${unmodifiableMapView.length}');
  print('Type of the map: ${unmodifiableMapView.runtimeType}');
  print('Values in the map: ${unmodifiableMapView.values}');

  // Attempting to modify the map (which should throw errors)
  try {
    unmodifiableMapView.remove(1); // Throws an error
  } catch (e) {
    print('Error occurred: $e');
  }

  // Attempting to modify the map (which should throw errors)
  try {
    unmodifiableMapView.clear(); // Throws an error
  } catch (e) {
    print('Error occurred: $e');
  }
}
