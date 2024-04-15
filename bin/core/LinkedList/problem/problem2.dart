import 'dart:collection';

// Define a custom LinkedListEntry class for tasks
final class Task extends LinkedListEntry<Task> {
  final String title;
  final String description;
  final DateTime dueDate;
  bool isCompleted;

  Task(this.title, this.description, this.dueDate, {this.isCompleted = false});

  @override
  String toString() {
    return '[$isCompleted] $title - $description (Due: $dueDate)';
  }
}

class TaskManager {
  final LinkedList<Task> toDoList = LinkedList();

  void addTask(Task task) {
    toDoList.add(task);
    print('Added task: $task');
  }

  void addTaskAtStart(Task task) {
    toDoList.addFirst(task);
    print('Added task at the start: $task');
  }

  void addTaskAtIndex(int index, Task task) {
    if (index == 0) {
      addTaskAtStart(task);
    } else {
      var entry = toDoList.elementAt(index - 1);
      entry.insertAfter(task);
      print('Added task at index $index: $task');
    }
  }

  void markTaskAsCompleted(Task task) {
    if (toDoList.contains(task)) {
      task.isCompleted = true;
      print('Marked task as completed: $task');
    } else {
      print('Task not found in the to-do list.');
    }
  }

  void moveTask(Task task, int newIndex) {
    if (toDoList.contains(task)) {
      task.unlink();
      if (newIndex == 0) {
        toDoList.addFirst(task);
      } else {
        var entry = toDoList.elementAt(newIndex - 1);
        entry.insertAfter(task);
      }
      print('Moved task to index $newIndex: $task');
    } else {
      print('Task not found in the to-do list.');
    }
  }

  void viewToDoList() {
    if (toDoList.isEmpty) {
      print('To-do list is empty.');
    } else {
      print('To-do list:');
      for (var task in toDoList) {
        print(task);
      }
    }
  }
}

void main() {
  final taskManager = TaskManager();

  taskManager.addTask(Task('Finish project report', 'Complete the quarterly project report', DateTime(2023, 5, 15)));
  taskManager.addTask(Task('Grocery shopping', 'Buy milk, eggs, and bread', DateTime(2023, 4, 20)));
  taskManager.addTaskAtStart(Task('Schedule team meeting', 'Discuss the project roadmap', DateTime(2023, 4, 18)));
  taskManager.addTaskAtIndex(1, Task('Clean the apartment', 'Vacuum, mop, and dust the entire apartment', DateTime(2023, 4, 22)));

  taskManager.viewToDoList();
  print('');

  taskManager.markTaskAsCompleted(taskManager.toDoList.elementAt(1));
  taskManager.moveTask(taskManager.toDoList.last, 1);

  taskManager.viewToDoList();
}