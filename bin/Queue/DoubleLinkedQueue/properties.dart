import 'dart:collection';

void main() {
  // Creating a DoubleLinkedQueue
  var queue = DoubleLinkedQueue<int>();

  // Adding elements to the queue
  queue.addAll([1, 2, 3, 4, 5]);

  // Displaying the properties of the queue
  print('First element: ${queue.first}');
  print('Last element: ${queue.last}');
  print('Length of the queue: ${queue.length}');
  print('Is queue empty: ${queue.isEmpty}');
  print('Is queue not empty: ${queue.isNotEmpty}');

  // Iterating over the queue
  print('Elements of the queue:');
  for (var element in queue) {
    print(element);
  }
}