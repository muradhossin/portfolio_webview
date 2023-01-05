import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPage extends StatefulWidget {
  const WebviewPage({Key? key}) : super(key: key);

  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {

  late WebViewController _webViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: AppBar(

        ),
      ),
      body: WillPopScope(
        onWillPop: () async{
          if(await _webViewController.canGoBack()){
            _webViewController.goBack();
            return false;
          }else{
            return true;
          }
        },
        child: WebView(
          initialUrl: "https://sites.google.com/diu.edu.bd/muradhossin/home",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            _webViewController = controller;
          },
        ),
      ),
    );
  }
}
