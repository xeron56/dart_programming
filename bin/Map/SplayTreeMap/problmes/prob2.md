**Problem: Task Priority Management**

Consider a scenario where you are managing tasks for a project, and each task has a priority level associated with it. You need to efficiently manage the tasks based on their priorities, ensuring that higher priority tasks are executed before lower priority ones. Additionally, tasks with the same priority should be executed in the order they were added.

Here's how you can use a `SplayTreeMap` to solve this problem:

1. **Data Representation**: Represent each task with its priority level as the key and a list of tasks with the same priority as the value in the `SplayTreeMap`. This allows you to quickly retrieve tasks based on their priorities, with tasks of the same priority grouped together and sorted naturally in ascending order of priority.

2. **Task Addition**: When adding a new task, insert it into the list of tasks with the corresponding priority level. If no tasks with that priority exist yet, create a new list for that priority level.

3. **Task Execution**: Retrieve tasks from the `SplayTreeMap` in ascending order of priority. For tasks with the same priority, execute them in the order they were added to maintain FIFO (First-In-First-Out) order.

4. **Dynamic Updates**: If there are changes to task priorities or new tasks are added with higher priorities, you can easily update the `SplayTreeMap` accordingly without needing to re-sort the tasks.

```dart
import 'dart:collection';

void main() {
  // Create a SplayTreeMap to manage tasks based on priority
  final taskPriorityMap = SplayTreeMap<int, List<String>>();

  // Add tasks to the priority map
  addTask(taskPriorityMap, 3, 'Implement Feature A');
  addTask(taskPriorityMap, 1, 'Fix Critical Bug');
  addTask(taskPriorityMap, 2, 'Write Unit Tests');
  addTask(taskPriorityMap, 3, 'Refactor Codebase');
  addTask(taskPriorityMap, 2, 'Review Pull Requests');

  // Execute tasks based on priority
  executeTasks(taskPriorityMap);
}

// Function to add a task to the priority map
void addTask(SplayTreeMap<int, List<String>> priorityMap, int priority, String task) {
  if (!priorityMap.containsKey(priority)) {
    priorityMap[priority] = [];
  }
  priorityMap[priority]!.add(task);
  print('Task added: $task (Priority: $priority)');
}

// Function to execute tasks based on priority
void executeTasks(SplayTreeMap<int, List<String>> priorityMap) {
  // Iterate through the priority map to execute tasks
  for (var priorityEntry in priorityMap.entries) {
    final priority = priorityEntry.key;
    final tasks = priorityEntry.value;
    print('Executing tasks with Priority $priority:');
    for (var task in tasks) {
      print('- $task');
    }
  }
}
```

In this example, the `SplayTreeMap` is used to efficiently manage tasks based on their priority levels. It allows for easy addition of tasks, execution of tasks in the correct order of priority, and dynamic updates to the task list. This solution demonstrates how `SplayTreeMap` can be applied to real-life scenarios involving task management and prioritization.