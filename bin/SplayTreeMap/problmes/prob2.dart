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