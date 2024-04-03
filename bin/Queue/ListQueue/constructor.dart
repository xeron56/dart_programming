import 'dart:collection';

void main() {
  // Create a ListQueue
  var queue = ListQueue<int>();

  // Add elements to the queue
  queue.add(1);
  queue.add(2);
  queue.add(3);
  queue.add(4);

  // Accessing properties
  print('First element: ${queue.first}');
  print('Last element: ${queue.last}');
  print('Length of the queue: ${queue.length}');
  print('Is the queue empty? ${queue.isEmpty}');
  print('Is the queue not empty? ${queue.isNotEmpty}');

  // Converting the queue to a list
  var listFromQueue = queue.toList();
  print('List from queue: $listFromQueue');

  // Removing elements
  var removedElement = queue.removeFirst();
  print('Removed element: $removedElement');
  print('Queue after removing first element: $queue');

  queue.remove(3);
  print('Queue after removing element 3: $queue');

  // Clearing the queue
  queue.clear();
  print('Queue after clearing: $queue');
}
