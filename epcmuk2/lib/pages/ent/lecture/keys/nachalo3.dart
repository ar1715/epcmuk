import 'package:flutter/material.dart';
import 'package:epcmuk/pages/ent/lecture/mater/book2.dart';
class Nachalo3 extends StatelessWidget {
  const Nachalo3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        List.generate(1, (int index) {
          return ListTile(
            leading: CircleAvatar(
             child: Text('${index + 1}'),
             backgroundColor: Colors.lightGreen,
             foregroundColor: Colors.greenAccent,
            ),
            title: Text('Загрузить Материал ${index + 1}'),
            trailing: Icon(Icons.arrow_downward),
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Lecture3()),);
            },
          );
        })
      ),
    );
  }
}