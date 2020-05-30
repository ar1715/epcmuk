import 'package:flutter/material.dart';
import 'package:epcmuk/services/authentication.dart';

class Reminders extends StatefulWidget {
  Reminders({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);
  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  _RemindersState createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
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
      body: Center(
        child: Column(
          children: <Widget>[
            _myWidget(context),
            Divider(),
            _myWidget2(context),
            Divider(),
            _myWidget3(context),
            Divider(),
            RaisedButton(
              color: Colors.red,
              child: Text('Выйти из системы'),
              elevation: 4.0,
              onPressed: signOut,
            ),
          ],
        ),
      ),
    );
  }
}

// modify this widget with the example code below
Widget _myWidget(BuildContext context) {
  String myString =
      'E-PCMUK программа для твоего развития в области компьютерных сетей';
  print(myString);
  return Text(
    myString,
    style: TextStyle(
      fontSize: 40.0,
      shadows: [
        Shadow(
          color: Colors.blue,
          blurRadius: 10.0,
          offset: Offset(5.0, 5.0),
        ),
        Shadow(
          color: Colors.red,
          blurRadius: 10.0,
          offset: Offset(-5.0, 5.0),
        ),
      ],
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget _myWidget2(BuildContext context) {
  String myString =
      'Это программа позволяет вам получить базовые необходимые информации по компютерным сетям.';
  print(myString);
  return Text(
    myString,
    style: TextStyle(
      fontSize: 28.0,
      color: Colors.redAccent,
    ),
  );
}

Widget _myWidget3(BuildContext context) {
  String myString = 'Будущее в твоих руках!';
  print(myString);
  return Text(
    myString,
    style: TextStyle(
      fontSize: 30.0,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    ),
  );
}


