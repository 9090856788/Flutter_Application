import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../data/database.dart';
import '../utils/todo_tile.dart';
import '../utils/dialog_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // reference to the box
  final _myBox = Hive.box('todo_box');
  // text controller
  final _controller = TextEditingController();

  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }

  // take a reference of todoDatabase class
  TodoDatabase db = TodoDatabase();

  @override
  void initState() {
    // if this is the 1st time ever opening the app, then create default data
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      // else load the data from database
      db.loadData();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void createNewTask() {
      showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: Navigator.of(context).pop,
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow[400],
        title: const Text("TO DO"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: db.toDoList[index][0],
            taskCompleted: db.toDoList[index][1],
            onChanged: (value) {
              // Handle checkbox state change
              setState(() {
                db.toDoList[index][1] = value;
                db.updateDatabase();
              });
            },
            deleteFunction: (context) {
              setState(() {
                db.toDoList.removeAt(index);
                db.updateDatabase();
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.yellow[400],
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
