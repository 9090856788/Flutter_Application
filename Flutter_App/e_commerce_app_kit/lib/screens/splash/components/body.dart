import 'package:e_commerce_app_kit/components/default_button.dart';
import 'package:e_commerce_app_kit/constants/app_colors.dart';
import 'package:e_commerce_app_kit/screens/splash/components/splash_content.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Techify, Let’s shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text":
          "We help people connect with store \naround United State of America",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) => setState(() => currentPage = value),
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  return SplashContent(
                    text: splashData[index]["text"]!,
                    image: splashData[index]["image"]!,
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.only(right: 5),
                          width: currentPage == index ? 20 : 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: currentPage == index
                                ? AppColors.primaryColor
                                : AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(text: "GET STARTED", onPressed: () {}),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
