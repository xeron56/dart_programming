import 'dart:collection';

void main() {
  // Creating a queue
  Queue<int> queue = Queue<int>.from([1, 2, 3, 4, 5]);

  // Adding elements
  queue.add(6);
  print('Queue after adding 6: $queue');

  queue.addAll([7, 8, 9]);
  print('Queue after adding [7, 8, 9]: $queue');

  queue.addFirst(0);
  print('Queue after adding 0 at the beginning: $queue');

  queue.addLast(10);
  print('Queue after adding 10 at the end: $queue');

  // Checking
  print('Does the queue contain 5? ${queue.contains(5)}');
  print('Index of element 3: ${queue.elementAt(2)}');

  // Removing elements
  queue.remove(5);
  print('Queue after removing 5: $queue');

  queue.removeFirst();
  print('Queue after removing the first element: $queue');

  queue.removeLast();
  print('Queue after removing the last element: $queue');

  queue.removeWhere((element) => element % 2 == 0);
  print('Queue after removing even numbers: $queue');

  // Iterating
  queue.forEach((element) => print('Element: $element'));

  // Clearing the queue
  queue.clear();
  print('Queue after clearing: $queue');
}
