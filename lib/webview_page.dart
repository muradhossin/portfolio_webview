import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPage extends StatefulWidget {
  const WebviewPage({Key? key}) : super(key: key);

  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: AppBar(

        ),
      ),
      body: WebView(
        initialUrl: "https://sites.google.com/diu.edu.bd/muradhossin/home",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
