import 'package:flutter/material.dart';
import '../utils/todo_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // create a list to hold our to-do items
  List toDoList = [
    ['Make Tutorial', false],
    ['Do Exercise', false],
    ['Build App', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text("TO DO"),
        centerTitle: true,
        backgroundColor: Colors.yellow[400],
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) {
              // Handle checkbox state change
              setState(() {
                toDoList[index][1] = value;
              });
            },
          );
        },
      ),
    );
  }
}
