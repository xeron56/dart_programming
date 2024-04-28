

// ignore_for_file: override_on_non_overriding_member

void main() {
  // Creating an empty DoubleLinkedQueue
  var emptyQueue = DoubleLinkedQueue<int>();

  // Creating a DoubleLinkedQueue from an Iterable
  var iterable = [1, 2, 3, 4, 5];
  var queueFromIterable = DoubleLinkedQueue.from(iterable);

  // Creating a DoubleLinkedQueue from an Iterable using factory constructor
  var queueFromFactory = DoubleLinkedQueue.of(iterable);

  // Displaying the contents of each queue
  print('Empty Queue: $emptyQueue');
  print('Queue from Iterable: $queueFromIterable');
  print('Queue from Factory Constructor: $queueFromFactory');
}

class DoubleLinkedQueue<E> extends Iterable<E> {
  // Implementing the Queue interface based on a double-linked list

  // Properties and Methods...

  // Constructors
  DoubleLinkedQueue();
  factory DoubleLinkedQueue.from(Iterable elements) {
    var queue = DoubleLinkedQueue<E>();
    queue.addAll(elements as Iterable<E>);
    return queue;
  }
  factory DoubleLinkedQueue.of(Iterable<E> elements) {
    return DoubleLinkedQueue.from(elements);
  }
  
  @override

  void add(E value) {
    // TODO: implement add
  }
  
  @override

  void addAll(Iterable<E> iterable) {
    // TODO: implement addAll
  }
  
  @override

  void addFirst(E value) {
    // TODO: implement addFirst
  }
  
  @override

  void addLast(E value) {
    // TODO: implement addLast
  }
  
  @override

  void clear() {
    // TODO: implement clear
  }
  
  @override
  // TODO: implement iterator
  Iterator<E> get iterator => throw UnimplementedError();
  
  @override

  bool remove(Object? value) {
    // TODO: implement remove
    throw UnimplementedError();
  }
  
  @override
  E removeFirst() {
    // TODO: implement removeFirst
    throw UnimplementedError();
  }
  
  @override
  E removeLast() {
    // TODO: implement removeLast
    throw UnimplementedError();
  }
  
  @override
  void removeWhere(bool Function(E element) test) {
    // TODO: implement removeWhere
  }
  
  @override
  void retainWhere(bool Function(E element) test) {
    // TODO: implement retainWhere
  }
}
