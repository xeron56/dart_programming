import 'dart:collection';

void main() {
  // Create a ListQueue
  var queue = ListQueue<int>();

  // Add elements to the queue
  queue.add(1);
  queue.add(2);
  queue.add(3);
  queue.add(4);

  print('Initial Queue: $queue');

  // Adding elements using addAll
  queue.addAll([5, 6, 7]);
  print('Queue after addAll: $queue');

  // Adding elements using addFirst
  queue.addFirst(0);
  print('Queue after addFirst: $queue');

  // Adding elements using addLast
  queue.addLast(8);
  print('Queue after addLast: $queue');

  // Checking if any element satisfies a condition
  var hasEven = queue.any((element) => element.isEven);
  print('Does the queue have any even number? $hasEven');

  // Checking if all elements satisfy a condition
  var allPositive = queue.every((element) => element > 0);
  print('Are all elements in the queue positive? $allPositive');

  // Removing an element
  var removedElement = queue.remove(5);
  print('Removed element: $removedElement, Queue after removing 5: $queue');

  // Removing the first element
  var firstElement = queue.removeFirst();
  print('Removed first element: $firstElement, Queue after removing first element: $queue');

  // Removing the last element
  var lastElement = queue.removeLast();
  print('Removed last element: $lastElement, Queue after removing last element: $queue');

  // Removing elements that satisfy a condition
  queue.removeWhere((element) => element.isOdd);
  print('Queue after removing odd numbers: $queue');

  // Retaining only elements that satisfy a condition
  queue.retainWhere((element) => element > 3);
  print('Queue after retaining elements greater than 3: $queue');

  // Iterating over elements
  for (var element in queue) {
    print('Element: $element');
  }

  // Converting the queue to a list
  var queueAsList = queue.toList();
  print('Queue as list: $queueAsList');
}
