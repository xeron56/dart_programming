import 'dart:collection';

//listqueue
void listqueue() {
  ListQueue<int> queue = ListQueue<int>();

  queue.add(1); // Add elements at the end
  queue.add(2);
  queue.addLast(3);

  queue.addFirst(0); // Add elements at the beginning

  print(queue); // Output: (0, 1, 2, 3)

  queue.removeFirst(); // Remove element from the front
  queue.removeLast(); // Remove element from the end

  print(queue); // Output: (1, 2)
}

//queue
void queue() {
  Queue<int> queue = Queue<int>();

  queue.add(1); // Add elements at the end
  queue.add(2);
  queue.addLast(3);

  queue.addFirst(0); // Add elements at the beginning

  print(queue); // Output: (0, 1, 2, 3)

  queue.removeFirst(); // Remove element from the front
  queue.removeLast(); // Remove element from the end

  print(queue); // Output: (1, 2)
}

//hashset
void hashset() {
  HashSet<int> hashSet = HashSet<int>();

  hashSet.add(1);
  hashSet.add(2);
  hashSet.add(3);
  hashSet.add(4);
  hashSet.add(5);

  print(hashSet); // Output: {1, 2, 3, 4, 5}

  hashSet.remove(3);

  print(hashSet); // Output: {1, 2, 4, 5}
}

//hashmap
void hashmap() {
  HashMap<String, int> hashMap = HashMap<String, int>();

  hashMap['one'] = 1;
  hashMap['two'] = 2;
  hashMap['three'] = 3;
  hashMap['four'] = 4;
  hashMap['five'] = 5;

  print(hashMap); // Output: {one: 1, two: 2, three: 3, four: 4, five: 5}

  hashMap.remove('three');

  print(hashMap); // Output: {one: 1, two: 2, four: 4, five: 5}
}

//linkedhashmap
void linkedhashmap() {
  LinkedHashMap<String, int> linkedHashMap = LinkedHashMap<String, int>();

  linkedHashMap['one'] = 1;
  linkedHashMap['two'] = 2;
  linkedHashMap['three'] = 3;
  linkedHashMap['four'] = 4;
  linkedHashMap['five'] = 5;

  print(linkedHashMap); // Output: {one: 1, two: 2, three: 3, four: 4, five: 5}

  linkedHashMap.remove('three');

  print(linkedHashMap); // Output: {one: 1, two: 2, four: 4, five: 5}
}

//splaytreeset
void splaytreeset() {
  SplayTreeSet<int> splayTreeSet = SplayTreeSet<int>();

  splayTreeSet.addAll([3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]);

  print(splayTreeSet); // Output: {1, 2, 3, 4, 5, 6, 9}
}

//splaytreemap
void splaytreemap() {
  SplayTreeMap<String, int> splayTreeMap = SplayTreeMap<String, int>();

  splayTreeMap['one'] = 1;
  splayTreeMap['two'] = 2;
  splayTreeMap['three'] = 3;
  splayTreeMap['four'] = 4;
  splayTreeMap['five'] = 5;

  print(splayTreeMap); // Output: {five: 5, four: 4, one: 1, three: 3, two: 2}

  splayTreeMap.remove('three');

  print(splayTreeMap); // Output: {five: 5, four: 4, one: 1, two: 2}
}
