import 'package:flutter/material.dart';
import 'package:webview_in_flutter_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WebView in flutter app",
      home: HomeScreen(),
    );
  }
}
