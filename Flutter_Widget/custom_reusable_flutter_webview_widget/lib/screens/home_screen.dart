import 'package:custom_reusable_flutter_webview_widget/widget/web_view_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void openWeb(BuildContext context, String title, String url) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewPage(title: title, url: url),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("WebView Flutter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => openWeb(context, "GitHub", "https://github.com"),
              child: const Text("Open Github"),
            ),

            ElevatedButton(
              onPressed: () =>
                  openWeb(context, "YouTube", "https://youtube.com"),
              child: const Text("Open YouTube"),
            ),

            ElevatedButton(
              onPressed: () =>
                  openWeb(context, "LinkedIn", "https://linkedin.com"),
              child: const Text("Open LinkedIn"),
            ),

            ElevatedButton(
              onPressed: () =>
                  openWeb(context, "Twitter", "https://twitter.com"),
              child: const Text("Open Twitter"),
            ),

            ElevatedButton(
              onPressed: () =>
                  openWeb(context, "Facebook", "https://facebook.com"),
              child: const Text("Open Facebook"),
            ),
          ],
        ),
      ),
    );
  }
}
