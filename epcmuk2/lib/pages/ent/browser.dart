import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Browser extends StatefulWidget {
  Browser({Key key}) : super(key: key);

  @override
  _BrowserState createState() => _BrowserState();
}

class _BrowserState extends State<Browser> {
  WebViewController _webViewController;
  TextEditingController _teController = new TextEditingController();
  bool showLoading = false;

  void updateLoading(bool ls) {
    this.setState(() {
      showLoading = ls;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                flex: 9,
                child: Stack(
                  children: <Widget>[
                    WebView(
                      initialUrl: 'http://google.com',
                      onPageFinished: (data) {
                        updateLoading(false);
                      },
                      javascriptMode: JavascriptMode.unrestricted,
                      onWebViewCreated: (webViewController) {
                        _webViewController = webViewController;
                      },
                    ),
                    (showLoading)
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Center()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
