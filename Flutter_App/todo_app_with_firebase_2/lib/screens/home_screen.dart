import 'package:flutter/material.dart';
import '../components/filter_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool today = true, tomorrow = false, next_week = false;
  bool suggest = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: Icon(color: Colors.black, Icons.add),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello \nKanhu Charan",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilterButton(
                        label: "Today",
                        isSelected: today,
                        width: 80,
                        onTap: () {
                          today = true;
                          tomorrow = false;
                          next_week = false;
                          setState(() {});
                        },
                      ),
                      FilterButton(
                        label: "Tomorrow",
                        isSelected: tomorrow,
                        width: 100,
                        onTap: () {
                          today = false;
                          tomorrow = true;
                          next_week = false;
                          setState(() {});
                        },
                      ),
                      FilterButton(
                        label: "Next Week",
                        isSelected: next_week,
                        width: 120,
                        onTap: () {
                          today = false;
                          tomorrow = false;
                          next_week = true;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: CheckboxListTile(
                      activeColor: Colors.amber,
                      title: Text(
                        "Hello How are you?",
                        style: TextStyle(
                          decoration: suggest
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      value: suggest,
                      onChanged: (newVal) {
                        setState(() {
                          suggest = newVal!;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
