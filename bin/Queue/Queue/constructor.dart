import 'dart:collection';

void main() {
  // Creating a queue using the default constructor
  Queue<int> queue1 = Queue<int>();
  print('Queue created using default constructor: $queue1');

  // Creating a queue from an iterable using the `from` constructor
  Iterable<int> iterable = [1, 2, 3, 4, 5];
  Queue<int> queue2 = Queue<int>.from(iterable);
  print('Queue created from an iterable: $queue2');

  // Creating a queue from a typed iterable using the `of` constructor
  Iterable<int> typedIterable = [6, 7, 8, 9, 10];
  Queue<int> queue3 = Queue<int>.of(typedIterable);
  print('Queue created from a typed iterable: $queue3');
}
