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
      backgroundColor: Colors.grey[850],
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[900]!,
                        offset: Offset(14.0, 14.0),
                        blurRadius: 25.0,
                        spreadRadius: 5.0,
                      ),
                      BoxShadow(
                        color: Colors.grey[800]!,
                        offset: Offset(-4.0, -14.0),
                        blurRadius: 25.0,
                        spreadRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Icon(Icons.android, size: 80, color: Colors.white),
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[900]!,
                        offset: Offset(14.0, 14.0),
                        blurRadius: 25.0,
                        spreadRadius: 5.0,
                      ),
                      BoxShadow(
                        color: Colors.grey[800]!,
                        offset: Offset(-4.0, -14.0),
                        blurRadius: 25.0,
                        spreadRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Icon(Icons.apple, size: 80, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
