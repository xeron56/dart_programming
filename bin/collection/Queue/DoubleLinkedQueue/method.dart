import 'dart:collection';

void main() {
  // Creating a DoubleLinkedQueue
  var queue = DoubleLinkedQueue<int>();

  // Adding elements to the queue
  queue.addAll([1, 2, 3, 4, 5]);

  // Displaying the queue
  print('Initial Queue: $queue');

  // Removing elements from the queue
  queue.removeFirst();
  queue.removeLast();

  // Displaying the modified queue
  print('Queue after removing first and last elements: $queue');

  // Checking if the queue contains a specific element
  var containsThree = queue.contains(3);
  print('Queue contains 3: $containsThree');

  // Checking if the queue is empty
  var isEmpty = queue.isEmpty;
  print('Queue is empty: $isEmpty');

  // Getting the first and last elements of the queue
  var firstElement = queue.first;
  var lastElement = queue.last;
  print('First element: $firstElement, Last element: $lastElement');

  // Getting the length of the queue
  var length = queue.length;
  print('Length of the queue: $length');

  // Creating an iterator to iterate over the queue
  var iterator = queue.iterator;
  while (iterator.moveNext()) {
    print('Iterating: ${iterator.current}');
  }

  // Clearing the queue
  queue.clear();
  print('Queue after clearing: $queue');
}
