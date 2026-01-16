import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  // create a list to store our tasks
  List toDoList = [];
  // reference the hive box
  final _myBox = Hive.box('todo_box');

  // create a task list when application open 1st time
  void createInitialData() {
    toDoList = [
      ["Welcome to your ToDo App!", false],
      ["Tap + to add a new task.", false],
      ["Tap the checkbox to mark as done.", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
