import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8edc2),
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        backgroundColor: Color.fromARGB(255, 229, 176, 42),
      ),
    );
  }
}
