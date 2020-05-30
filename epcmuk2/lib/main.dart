import 'package:flutter/material.dart';
import 'package:epcmuk/services/authentication.dart';
import 'package:epcmuk/pages/root_page.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      title: new Text(
        'Добро пожаловать в E-PCMUK',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.white),
      ),
      seconds: 4,
      navigateAfterSeconds: AfterSplash(),
      image: new Image.asset(
          'assets/images/loading2.gif'),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
      onClick: () => print("E-PCMUK"),
      loaderColor: Colors.white,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RootPage(auth: new Auth());
  }
}


