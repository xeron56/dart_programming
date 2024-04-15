import 'dart:collection';

class BrowserHistory {
  final DoubleLinkedQueue<String> _visitedPages = DoubleLinkedQueue();
  String _currentPage;

  BrowserHistory(String initialPage)
      : _currentPage = initialPage {
    _currentPage = initialPage;
    _visitedPages.addLast(initialPage);
  }

  void visit(String page) {
    _currentPage = page;
    _visitedPages.addLast(page);

    // Clear the redo queue
    while (_visitedPages.length > _visitedPages.toList().indexOf(_currentPage) + 1) {
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
    for (int i = 0; i < steps && _visitedPages.length > _visitedPages.toList().indexOf(_currentPage) + 1; i++) {
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