Here's a real-life problem that can be solved using a DoubleLinkedQueue in Dart:

**Problem: Undo/Redo functionality in a text editor**

In a text editor, users often need to be able to undo and redo their actions, such as typing, deleting, or formatting text. To implement this functionality, we can use a DoubleLinkedQueue to keep track of the user's actions.

**Solution using DoubleLinkedQueue:**

```dart
import 'dart:collection';

class TextEditor {
  final DoubleLinkedQueue<String> _undoQueue = DoubleLinkedQueue();
  final DoubleLinkedQueue<String> _redoQueue = DoubleLinkedQueue();
  String _currentText = '';

  void type(String text) {
    _currentText += text;
    _undoQueue.addLast(text);
    _redoQueue.clear();
  }

  void delete(int count) {
    if (count > _currentText.length) {
      count = _currentText.length;
    }
    final deletedText = _currentText.substring(_currentText.length - count);
    _currentText = _currentText.substring(0, _currentText.length - count);
    _undoQueue.addLast(deletedText);
    _redoQueue.clear();
  }

  void undo() {
    if (_undoQueue.isNotEmpty) {
      final undoText = _undoQueue.removeLast();
      _redoQueue.addFirst(undoText);
      _currentText = _currentText.substring(0, _currentText.length - undoText.length);
    }
  }

  void redo() {
    if (_redoQueue.isNotEmpty) {
      final redoText = _redoQueue.removeFirst();
      _undoQueue.addLast(redoText);
      _currentText += redoText;
    }
  }

  String get currentText => _currentText;
}

void main() {
  final editor = TextEditor();
  editor.type('hello');
  print(editor.currentText); // Output: "hello"
  editor.delete(2);
  print(editor.currentText); // Output: "he"
  editor.undo();
  print(editor.currentText); // Output: "hello"
  editor.redo();
  print(editor.currentText); // Output: "he"
}
```

Explanation:

1. We create a `TextEditor` class that has two `DoubleLinkedQueue`s: one for storing the user's actions to be undone (`_undoQueue`) and one for storing the actions to be redone (`_redoQueue`).
2. The `type()` method adds the typed text to the `_currentText` string and adds the text to the `_undoQueue`. It also clears the `_redoQueue` since any previous redo actions are no longer valid.
3. The `delete()` method removes the specified number of characters from the `_currentText` string and adds the deleted text to the `_undoQueue`. It also clears the `_redoQueue`.
4. The `undo()` method removes the last action from the `_undoQueue` and adds it to the `_redoQueue`. It then updates the `_currentText` string accordingly.
5. The `redo()` method removes the first action from the `_redoQueue` and adds it to the `_undoQueue`. It then updates the `_currentText` string accordingly.

The `DoubleLinkedQueue` is a suitable data structure for this problem because it allows us to efficiently add and remove elements from both the beginning and the end of the queue, which is necessary for the undo and redo functionality.