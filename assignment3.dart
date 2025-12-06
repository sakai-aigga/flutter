// Building a Console Based To Do List Manager
import 'dart:io';

class Task {
  String title;
  bool isCompleted;
  Task(this.title, {this.isCompleted = false});
}

class TaskManager {
  List<Task> tasks = [];
  TaskManager(this.tasks);

  // ✅ Make async and await fakeAsync
  Future<void> addTask() async {
    stdout.write("Enter new task: ");
    String title = stdin.readLineSync()!;
    tasks.add(Task(title));
    await fakeAsync();
  }

  void completeTask() {
    if (tasks.isEmpty) {
      print("No Tasks to complete\n");
      return;
    }

    listTask();
    stdout.write("Enter task number to mark as complete: ");
    int index = int.parse(stdin.readLineSync()!) - 1;

    if (index < 0 || index >= tasks.length) {
      print("Invalid task number.\n");
      return;
    }
    tasks[index].isCompleted = true;
    print("Task marked as complete!\n");
  }

  void listTask() {
    if (tasks.isEmpty) {
      print("No available Tasks.\n");
      return;
    }

    for (int i = 0; i < tasks.length; i++) {
      String status = tasks[i].isCompleted ? "[✓]" : "[ ]";
      print("${i + 1}. $status ${tasks[i].title}");
    }
    print("");
  }

  Future<void> fakeAsync() async {
    print("Saving Tasks...\n");
    await Future.delayed(Duration(seconds: 2));
    print("Tasks saved!\n");
  }
}

void main() async {
  TaskManager obj = TaskManager([]);
  print("To-Do List Manager:\n");

  while (true) {
    print("1.  Create New Task");
    print("2.  View Task List");
    print("3.  Mark Task as Completed");
    print("4.  Exit");
    stdout.write("Select an option (1,2,3,4): ");

    int option = int.parse(stdin.readLineSync()!);
    print("");

    if (option == 1) {
      await obj.addTask();
    } else if (option == 2) {
      obj.listTask();
    } else if (option == 3) {
      obj.completeTask();
    } else if (option == 4) {
      print("Exiting");
      break;
    } else {
      print("Invalid Input. Select among 1, 2, 3 or 4.\n");
    }
  }
}
