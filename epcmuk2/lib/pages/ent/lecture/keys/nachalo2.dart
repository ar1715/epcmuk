import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:epcmuk/pages/ent/lecture/mater/book1.dart';

class Nachalo2 extends StatelessWidget {
  const Nachalo2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(FontAwesome.download),
        title: Text('Загрузить материал'),
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


class Nachalo extends StatelessWidget {
  const Nachalo({Key key}) : super(key: key);

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
        'assets/images/gif.gif',
         fit: BoxFit.cover,
      ),
    );
  }
}
