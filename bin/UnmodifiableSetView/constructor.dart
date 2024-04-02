import 'dart:collection';

void main() {
  // Constructor 1: Create an UnmodifiableSetView from an existing set
  final baseSet = {'apple', 'banana', 'orange'};
  final unmodifiableSetView1 = UnmodifiableSetView(baseSet);
  print('Unmodifiable Set View 1: $unmodifiableSetView1');

  // Constructor 2: Create an UnmodifiableSetView from an empty set
  final emptySet = <String>{};
  final unmodifiableSetView2 = UnmodifiableSetView(emptySet);
  print('Unmodifiable Set View 2: $unmodifiableSetView2');

  // Constructor 3: Create an UnmodifiableSetView from an iterable
  final iterable = ['cat', 'dog', 'fish'];
  final unmodifiableSetView3 = UnmodifiableSetView(iterable.toSet());
  print('Unmodifiable Set View 3: $unmodifiableSetView3');

  // Constructor 4: Create an UnmodifiableSetView from another UnmodifiableSetView
  final unmodifiableSetView4 = UnmodifiableSetView(unmodifiableSetView3);
  print('Unmodifiable Set View 4: $unmodifiableSetView4');
}
