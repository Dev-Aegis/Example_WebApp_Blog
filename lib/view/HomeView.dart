import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeView extends StatelessWidget {
  WebViewController webViewController = WebViewController()
  ..loadRequest(Uri.parse('https://blog.codefactory.ai'))
  ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Studio Red"),
        centerTitle: true,

        actions: [
          IconButton(onPressed: () {
            webViewController.loadRequest((Uri.parse('https://blog.codefactory.ai')));
          }, icon: const Icon(
            Icons.home
          ))
        ],
      ),
      body: WebViewWidget(
        controller: webViewController,
      )
    );
  }
}
