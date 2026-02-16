import 'package:flutter/material.dart';
import 'package:flutter_login_ui/constants/constants.dart';
import 'package:flutter_login_ui/pages/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/person.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text("BAKING LESSIONS", style: AppTextStyles.heading),
                  Text("MASTER THE ART OF BAKING", style: AppTextStyles.title),
                  SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("START LEARNING", style: AppTextStyles.button),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward, color: Colors.black),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
