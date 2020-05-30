import 'package:flutter/material.dart';
import 'dart:async';
import 'package:epcmuk/services/authentication.dart';


class Enter extends StatefulWidget {
  Enter({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);
  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  _EnterState createState() => _EnterState();
}

class _EnterState extends State<Enter> {
  signOut() async {
    try {
      await widget.auth.signOut();
      widget.logoutCallback();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Art'),
        actions: <Widget>[FlatButton(onPressed: signOut, child: null)],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
              0.1,
              0.3,
              0.7,
              1
            ],
                colors: [
              Colors.green,
              Colors.blue,
              Colors.orange,
              Colors.pink
            ])),
        child: Center(
          child: Text(
            'ww.developerlibs.com',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
