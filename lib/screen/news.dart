import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://www.bbc.com/thai/international-57692589',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
