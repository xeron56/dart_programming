import 'dart:collection';

void main() {
  // 1. Using the default constructor
  LinkedHashSet<int> set1 = LinkedHashSet<int>();

  // 2. Using LinkedHashSet.from constructor with an Iterable
  List<int> elements = [1, 2, 3, 4, 5];
  LinkedHashSet<int> set2 = LinkedHashSet.from(elements);

  // 3. Using LinkedHashSet.identity constructor
  LinkedHashSet<int> set3 = LinkedHashSet.identity();

  // 4. Using LinkedHashSet.of constructor with individual elements
  LinkedHashSet<int> set4 = LinkedHashSet.of([6, 7, 8, 9, 10]);

  // Displaying the contents of each set
  print("Set 1: $set1");
  print("Set 2: $set2");
  print("Set 3: $set3");
  print("Set 4: $set4");
}
