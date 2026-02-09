import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("Welcome back!"),
              SizedBox(height: 5),
              Text("Kanhu Charan"),
            ],
          ),
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("images/boy1.jpg"),
          ),
        ],
      ),
    );
  }
}
