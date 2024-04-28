import 'dart:collection';

void main() {
  // Creating a LinkedHashSet
  LinkedHashSet<String> linkedHashSet = LinkedHashSet<String>();

  // Adding elements to the set
  linkedHashSet.add("Apple");
  linkedHashSet.add("Banana");
  linkedHashSet.add("Orange");

  // Printing the properties of the LinkedHashSet
  print("Elements in the LinkedHashSet: $linkedHashSet");

  // 1. Properties
  print("First element: ${linkedHashSet.first}");
  print("Last element: ${linkedHashSet.last}");
  print("Length of the LinkedHashSet: ${linkedHashSet.length}");
  print("Is the LinkedHashSet empty? ${linkedHashSet.isEmpty}");
  print("Is the LinkedHashSet not empty? ${linkedHashSet.isNotEmpty}");
  
  // 2. Iterating over the LinkedHashSet
  print("Iterating over the LinkedHashSet:");
  for (var element in linkedHashSet) {
    print(element);
  }

  // 3. Accessing elements by index (not supported in LinkedHashSet)
  // Uncommenting the following line will result in a compile-time error
  // print("Element at index 1: ${linkedHashSet[1]}");
}
