# HashSet in Dart

A `HashSet` is a built-in Dart class that represents a collection of unordered, unique items. It is part of Dart's `dart:collection` library.

## Creating a HashSet

There are several ways to create a `HashSet` in Dart:

### Default Constructor

The default constructor creates an empty `HashSet`.

```dart
final defaultHashSet = HashSet<String>();
```

### HashSet.from

The `HashSet.from` constructor creates a `HashSet` from an iterable. The `HashSet` will contain all elements from the iterable, but only unique elements will be kept.

```dart
final iterableHashSet = HashSet.from(['apple', 'banana', 'orange']);
```

### HashSet.identity

The `HashSet.identity` constructor creates an empty `HashSet` that uses identity of elements for equality and hash code generation.

```dart
final identityHashSet = HashSet.identity();
```

### HashSet.of

The `HashSet.of` constructor creates a `HashSet` from an iterable. The `HashSet` will contain all elements from the iterable, but only unique elements will be kept.

```dart
final ofHashSet = HashSet.of(['dog', 'cat', 'bird']);
```

## Adding Elements

You can add elements to a `HashSet` using the `add` or `addAll` methods.

```dart
defaultHashSet.addAll(['one', 'two', 'three']);
```

## Displaying Elements

You can display all elements in a `HashSet` by printing it.

```dart
print('defaultHashSet: $defaultHashSet');
```

This will print all elements in the `HashSet` to the console.

## Summary

A `HashSet` is a useful data structure when you need a collection of unique items. It provides several constructors for creating a `HashSet` and methods for adding elements and displaying the `HashSet`.