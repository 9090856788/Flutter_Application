import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(body: Center(child: Text('Login UI goes here'))),
    );
  }
}
