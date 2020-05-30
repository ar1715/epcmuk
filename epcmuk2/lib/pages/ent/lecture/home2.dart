import 'package:flutter/material.dart';
import 'package:epcmuk/pages/ent/lecture/row_with_cardco.dart';

class Lecture7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.red]),
            ),
            child: Column(
              children: <Widget>[
                const ImagesPc(),
                Divider(),
                const Nachalo2(),
                Divider(),
                const Nachalo3(),
                Divider(),
                const Nachalo4(),
                Divider(),
                const Nachalo5(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
