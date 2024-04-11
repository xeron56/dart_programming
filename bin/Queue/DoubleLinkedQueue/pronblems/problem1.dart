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