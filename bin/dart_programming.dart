import 'dart:collection';

void main() {
  // 1. ListQueue
  var listQueue = ListQueue<int>();
  listQueue.addAll([1, 2, 3]);
  listQueue.add(4);
  print(listQueue); // Output: (1, 2, 3, 4)

  // 2. Queue
  var queue = Queue<int>();
  queue.addAll([1, 2, 3]);
  queue.add(4);
  print(queue); // Output: (1, 2, 3, 4)

  // 3. HashSet
  var hashSet = HashSet<int>();
  hashSet.addAll([1, 2, 3]);
  hashSet.add(4);
  print(hashSet); // Output: {1, 2, 3, 4}

  // 4. HashMap
  var hashMap = HashMap<String, int>();
  hashMap.addAll({'one': 1, 'two': 2, 'three': 3});
  hashMap['four'] = 4;
  print(hashMap); // Output: {one: 1, two: 2, three: 3, four: 4}

  // 5. LinkedHashMap
  var linkedHashMap = LinkedHashMap<String, int>();
  linkedHashMap.addAll({'one': 1, 'two': 2, 'three': 3});
  linkedHashMap['four'] = 4;
  print(linkedHashMap); // Output: {one: 1, two: 2, three: 3, four: 4}

  // 6. SplayTreeSet
  var splayTreeSet = SplayTreeSet<int>();
  splayTreeSet.addAll([3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]);
  print(splayTreeSet); // Output: {1, 2, 3, 4, 5, 6, 9}

  // 7. SplayTreeMap
  var splayTreeMap = SplayTreeMap<String, int>();
  splayTreeMap.addAll({'one': 1, 'two': 2, 'three': 3});
  splayTreeMap['four'] = 4;
  print(splayTreeMap); // Output: {four: 4, one: 1, three: 3, two: 2}
}
