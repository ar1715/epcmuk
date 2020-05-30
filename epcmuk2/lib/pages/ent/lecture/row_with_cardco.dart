import 'package:flutter/material.dart';
import 'package:epcmuk/pages/ent/lecture/mater/book1.dart';
import 'package:epcmuk/pages/ent/lecture/mater/book2.dart';
import 'package:epcmuk/pages/ent/lecture/mater/book3.dart';
import 'package:epcmuk/pages/ent/lecture/mater/book4.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Nachalo2 extends StatelessWidget {
  const Nachalo2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(FontAwesome5Solid.wifi),
        title: Text('Книга по Компьютерным сетям'),
        trailing: Icon(Icons.bookmark),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Lecture2()),
          );
        },
      ),
      color: Colors.limeAccent,
    );
  }
}

class Nachalo3 extends StatelessWidget {
  const Nachalo3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(FontAwesome.server),
        title: Text('IP и MAC адрес'),
        trailing: Icon(Icons.bookmark),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Lecture3()),
          );
        },
      ),
      color: Colors.lightBlueAccent,
    );
  }
}
class Nachalo4 extends StatelessWidget {
  const Nachalo4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(FontAwesome5.building),
        title: Text('Сетевые устройства'),
        trailing: Icon(Icons.bookmark),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Lecture4()),
          );
        },
      ),
      color: Colors.purpleAccent,
    );
  }
}
class Nachalo5 extends StatelessWidget {
  const Nachalo5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(FontAwesome.laptop),
        title: Text('Компьютерные сети и сетевые технологии'),
        trailing: Icon(Icons.bookmark),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Lecture5()),
          );
        },
      ),
      color: Colors.greenAccent,
    );
  }
}

class ImagesPc extends StatelessWidget {
  const ImagesPc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0
      ),
      decoration: BoxDecoration(
        color: Colors.lightGreen
      ),
      child: Image.asset(
        'assets/images/enterp.jpg',
         fit: BoxFit.cover,
      ),
    );
  }
}
