import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewUrl extends StatefulWidget {
  const WebViewUrl({super.key});

  @override
  State<WebViewUrl> createState() => _WebViewUrlState();
}

class _WebViewUrlState extends State<WebViewUrl> {
  late final WebViewController controller;
  
  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://github.com"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GitHub Repository"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 5,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
