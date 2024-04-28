import 'dart:collection';

void main() {
  // Creating a queue
  Queue<int> queue = Queue<int>.from([1, 2, 3, 4, 5]);

  // Accessing properties
  print('Queue: $queue');
  print('First element: ${queue.first}');
  print('Last element: ${queue.last}');
  print('Length of the queue: ${queue.length}');
  print('Is the queue empty? ${queue.isEmpty}');
  print('Is the queue not empty? ${queue.isNotEmpty}');
  print('Runtime type of the queue: ${queue.runtimeType}');

  // Modifying the queue
  queue.add(6);
  print('Queue after adding an element: $queue');
  queue.removeFirst();
  print('Queue after removing the first element: $queue');
}
