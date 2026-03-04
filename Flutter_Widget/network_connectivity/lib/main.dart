import "package:flutter/material.dart";
import "package:network_connectivity/screens/home_screen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Network Connectivity Check",
      home: HomeScreen(),
    );
  }
}
