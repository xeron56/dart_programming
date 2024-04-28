import 'dart:collection';

void main() {
  // Initialize the printer queue
  var printerQueue = ListQueue<String>();

  // Users send print jobs
  addPrintJob(printerQueue, "Document1.pdf");
  addPrintJob(printerQueue, "Presentation.pptx");
  addPrintJob(printerQueue, "Photo.jpg");
  addPrintJob(printerQueue, "UrgentContract.pdf", priority: true);

  // Process print jobs
  processPrintJobs(printerQueue);
}

// Function to add print jobs to the queue
void addPrintJob(ListQueue<String> queue, String job, {bool priority = false}) {
  if (priority) {
    queue.addFirst(job); // Add priority print job to the front of the queue
  } else {
    queue.add(job); // Add regular print job to the end of the queue
  }
  print("Added $job to print queue.");
}

// Function to process print jobs
void processPrintJobs(ListQueue<String> queue) {
  while (queue.isNotEmpty) {
    var currentJob = queue.removeFirst(); // Process the first print job
    print("Printing: $currentJob");
    print("Remaining print jobs: ${queue.length}");
  }
}