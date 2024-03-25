import 'dart:collection';

void main() {
  // Create a base map
  final baseMap = <int, String>{1: 'Mars', 2: 'Mercury', 3: 'Venus'};

  // Constructor: UnmodifiableMapView(Map<K, V> map)
  final unmodifiableMapView1 = UnmodifiableMapView(baseMap);


  // Print the unmodifiable maps
  print('Unmodifiable Map 1: $unmodifiableMapView1');


  // Access properties and methods of the unmodifiable maps
  print('Length of Map 1: ${unmodifiableMapView1.length}');


  // Attempt modification (which should throw errors)
  try {
    unmodifiableMapView1.remove(1); // Throws an error
  } catch (e) {
    print('Error occurred: $e');
  }

  
}
