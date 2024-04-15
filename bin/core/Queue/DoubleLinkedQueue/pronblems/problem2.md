Here's another real-life problem that can be solved using a DoubleLinkedQueue in Dart:

**Problem: Implementing a browser's back and forward navigation**

When using a web browser, users can navigate between pages by clicking on links or using the browser's back and forward buttons. To implement this functionality, we can use a DoubleLinkedQueue to keep track of the visited pages.

**Solution using DoubleLinkedQueue:**

```dart
import 'dart:collection';

class BrowserHistory {
  final DoubleLinkedQueue<String> _visitedPages = DoubleLinkedQueue();
  String _currentPage;

  BrowserHistory(String initialPage) {
    _currentPage = initialPage;
    _visitedPages.addLast(initialPage);
  }

  void visit(String page) {
    _currentPage = page;
    _visitedPages.addLast(page);

    // Clear the redo queue
    while (_visitedPages.length > _visitedPages.indexOf(_currentPage) + 1) {
      _visitedPages.removeLast();
    }
  }

  void back(int steps) {
    for (int i = 0; i < steps && _visitedPages.length > 1; i++) {
      _currentPage = _visitedPages.removeLast();
      _visitedPages.addFirst(_currentPage);
    }
  }

  void forward(int steps) {
    for (int i = 0; i < steps && _visitedPages.length > _visitedPages.indexOf(_currentPage) + 1; i++) {
      _currentPage = _visitedPages.removeFirst();
      _visitedPages.addLast(_currentPage);
    }
  }

  String get currentPage => _currentPage;
}

void main() {
  final browser = BrowserHistory('Google');
  print(browser.currentPage); // Output: "Google"

  browser.visit('Yahoo');
  print(browser.currentPage); // Output: "Yahoo"

  browser.visit('Bing');
  print(browser.currentPage); // Output: "Bing"

  browser.back(1);
  print(browser.currentPage); // Output: "Yahoo"

  browser.forward(1);
  print(browser.currentPage); // Output: "Bing"
}
```

Explanation:

1. We create a `BrowserHistory` class that has a `DoubleLinkedQueue` called `_visitedPages` to keep track of the visited pages.
2. The constructor initializes the `_currentPage` variable with the initial page and adds it to the `_visitedPages` queue.
3. The `visit()` method adds the new page to the `_visitedPages` queue and updates the `_currentPage` variable. It also clears the redo queue by removing any pages that come after the current page.
4. The `back()` method moves the `_currentPage` variable backwards in the `_visitedPages` queue by the specified number of steps, if possible.
5. The `forward()` method moves the `_currentPage` variable forwards in the `_visitedPages` queue by the specified number of steps, if possible.
6. The `currentPage` getter returns the current page.

The `DoubleLinkedQueue` is a suitable data structure for this problem because it allows us to efficiently add and remove elements from both the beginning and the end of the queue, which is necessary for the back and forward navigation functionality.