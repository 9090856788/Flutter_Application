import 'package:flutter/material.dart';
import 'package:network_connectivity/screens/network_connectivity.dart';

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
        backgroundColor: Colors.amber,
        title: Text("Network Connectivity"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            if (await isNetworkAvailable()) {
              print("Network Available");
            } else {
              print("Network not available");
            }
          },
          child: Text("Check Connectivity"),
        ),
      ),
    );
  }
}
