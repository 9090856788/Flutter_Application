import 'package:flutter/material.dart';
import 'package:neumorphism_container_wiget/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Neumorphism_Container_Wiget",
      theme: ThemeData(primarySwatch: Colors.grey),
      home: HomeScreen(),
    );
  }
}
