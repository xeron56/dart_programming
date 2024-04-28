import 'dart:collection';

void main() {
  // Create a base set
  final baseSet = {'apple', 'banana', 'orange'};
  
  // Create an UnmodifiableSetView from the base set
  final unmodifiableSetView = UnmodifiableSetView(baseSet);

  // Properties

  // 1. first
  print('First element: ${unmodifiableSetView.first}');

  // 2. hashCode
  print('Hash code: ${unmodifiableSetView.hashCode}');

  // 3. isEmpty
  print('Is empty: ${unmodifiableSetView.isEmpty}');

  // 4. isNotEmpty
  print('Is not empty: ${unmodifiableSetView.isNotEmpty}');

  // 5. iterator
  print('Iterator:');
  for (var element in unmodifiableSetView) {
    print(element);
  }

  // 6. last
  print('Last element: ${unmodifiableSetView.last}');

  // 7. length
  print('Length: ${unmodifiableSetView.length}');

  // 8. runtimeType
  print('Runtime type: ${unmodifiableSetView.runtimeType}');

  // 9. single
  // Throws StateError if the set contains more than one element
  try {
    print('Single element: ${unmodifiableSetView.single}');
  } catch (e) {
    print('Error: $e');
  }
}
