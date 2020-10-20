import 'dart:async';
import 'package:easy_web_view/easy_web_view.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'get_html_button.dart';


class HomeScreen extends StatelessWidget {
  // final Completer<WebViewController> _controller = Completer<WebViewController>();
  WebViewController _controller;
  // WebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    String quillHTML = '';
    return Scaffold(
      appBar: AppBar(
        title: Text('QUILL'),
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl: "https://dasbeerboot.github.io/wysiwyg-editor-examples/subpages/quill.html",
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;

              // webViewController.evaluateJavascript(
              //   "window.getQuillHTML.postMessage(window.document)"
              // );
            },
            javascriptChannels: <JavascriptChannel>[
              JavascriptChannel(
                name: 'getQuillHTML', 
                onMessageReceived: (JavascriptMessage result) {
                  quillHTML = result.message.toString();
                  print(quillHTML);
                }
                ),
                JavascriptChannel(
                  name: 'testEvaluateJS'
                , onMessageReceived: (JavascriptMessage result) {
                  print("test test test : " + result.message.toString());
                })
            ].toSet(),
          ),

          Container(
            child: Positioned(
              bottom: 10,
              right: 10,
              child: FlatButton(
                color: Colors.blue,
                onPressed: (){
                  _controller.evaluateJavascript(
                    "window.getQuillHTML()"
                  ).then((result) => print("RESULT !!!!! " + result.toString()));
                }, 
                child: Text("GET HTML"))
                )
          )
        ]
      ),
    );
  }
}
