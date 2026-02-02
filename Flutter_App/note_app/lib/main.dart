import 'package:flutter/material.dart';
import 'package:note_app/models/note_database.dart';
import 'package:provider/provider.dart';
import './pages/home_screen.dart';

void main() {
  // initialize isar database
  WidgetsFlutterBinding.ensureInitialized();
  NoteDatabase.initializeIsar();
  ChangeNotifierProvider(
    create: (context) => NoteDatabase(),
    child: const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomeScreen(),
    );
  }
}
