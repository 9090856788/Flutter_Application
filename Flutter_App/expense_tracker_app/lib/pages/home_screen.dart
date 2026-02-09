import 'package:expense_tracker_app/widget/expense_pie_chart_screen.dart';
import 'package:expense_tracker_app/widget/top_bar.dart';
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
      appBar: AppBar(
        elevation: 0,
        title: Text('Expense Tracker'),
        backgroundColor: Color.fromARGB(255, 215, 176, 20),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            TopBar(),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Manage your \nexpenses",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            ExpensePieChartScreen(),
          ],
        ),
      ),
    );
  }
}
