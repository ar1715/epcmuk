import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:epcmuk/pages/ent/left_drawer.dart';
import 'package:epcmuk/pages/ent/lecture/home2.dart';
import 'package:epcmuk/pages/ent/browser.dart';
import 'package:epcmuk/pages/ent/aboutp.dart';
import 'package:epcmuk/services/authentication.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'dart:io';

class Home extends StatefulWidget {
  Home({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);
  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  List _listPages = List();
  Widget _currentPage;
  @override
  void initState() {
    super.initState();
    _listPages..add(Lecture7())..add(Browser())..add(Reminders());
    _currentPage = Lecture7();
  }

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: GradientAppBar(
          title: Text('E-PCMUK'),
          backgroundColorStart: Colors.red,
          backgroundColorEnd: Colors.redAccent,
          actions: <Widget>[
            FlatButton(
              onPressed: () => exit(0),
              child: Text("Выход"),
              color: Colors.cyanAccent,
            ),
          ],
        ),
        drawer: const LeftDrawerWidget(),
        body: Center(
          child: _currentPage,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesome.book),
              title: Text('Лекции'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesome.chrome),
              title: Text('Браузер'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesome5.sun),
              title: Text('О программе'),
            ),
          ],
          onTap: (selectedIndex) => _changePage(selectedIndex),
        ),
      ),
    );
  }
}
