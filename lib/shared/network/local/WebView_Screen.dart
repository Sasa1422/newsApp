import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
   static String? url;

   final Controller = WebViewController();

   void initState() {
     Controller
       ..setJavaScriptMode(JavaScriptMode.unrestricted)
       ..setNavigationDelegate(
         NavigationDelegate(
           onProgress: (int progress) {
             // Update loading bar.
           },
           onPageStarted: (String url) {},
           onPageFinished: (String url) {},
           onWebResourceError: (WebResourceError error) {},
           onNavigationRequest: (NavigationRequest request) {
             if (request.url.startsWith('https://www.youtube.com/')) {
               return NavigationDecision.prevent;
             }
             return NavigationDecision.navigate;
           },
         ),
       )
       ..loadRequest(Uri.parse(url!));
   }

  WebViewScreen(article);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:
      //const WebView(
      //  initialUrl: url,
     // ),
      WebViewWidget(
        controller: Controller,

      ),
    );
  }
}
