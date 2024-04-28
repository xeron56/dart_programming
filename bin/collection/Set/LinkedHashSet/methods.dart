import 'dart:collection';

void main() {
  // Creating a LinkedHashSet
  LinkedHashSet<String> linkedHashSet = LinkedHashSet<String>();

  // Adding elements to the set
  linkedHashSet.add("Apple");
  linkedHashSet.add("Banana");
  linkedHashSet.add("Orange");

  // Printing the initial set
  print("Initial LinkedHashSet: $linkedHashSet");

  // Methods

  // 1. add()
  linkedHashSet.add("Mango");
  print("LinkedHashSet after adding Mango: $linkedHashSet");

  // 2. addAll()
  linkedHashSet.addAll(["Grapes", "Pineapple"]);
  print("LinkedHashSet after adding Grapes and Pineapple: $linkedHashSet");

  // 3. contains()
  print("Is Orange in the LinkedHashSet? ${linkedHashSet.contains("Orange")}"); // true

  // 4. remove()
  linkedHashSet.remove("Banana");
  print("LinkedHashSet after removing Banana: $linkedHashSet");

  // 5. removeAll()
  linkedHashSet.removeAll(["Apple", "Mango"]);
  print("LinkedHashSet after removing Apple and Mango: $linkedHashSet");

  // 6. retainAll()
  linkedHashSet.retainAll(["Grapes", "Pineapple"]);
  print("LinkedHashSet after retaining Grapes and Pineapple: $linkedHashSet");

  // 7. clear()
  linkedHashSet.clear();
  print("LinkedHashSet after clearing: $linkedHashSet");

  // 8. isEmpty() and isNotEmpty()
  print("Is the LinkedHashSet empty? ${linkedHashSet.isEmpty}"); // true
  print("Is the LinkedHashSet not empty? ${linkedHashSet.isNotEmpty}"); // false
}
