import 'package:flutter/material.dart';
import 'package:epcmuk/pages/ent/aboutp.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MenuListTileWidget extends StatefulWidget {
  MenuListTileWidget({Key key}) : super(key: key);

  @override
  _MenuListTileWidgetState createState() => _MenuListTileWidgetState();
}

class _MenuListTileWidgetState extends State<MenuListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(FontAwesome5.sun),
          title: Text('О программе'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Reminders(),
              ),
            );
          },
        ),
        Divider(color: Colors.grey),
        ListTile(
          leading: Icon(FontAwesome.home),
          title: Text('Политехнический колледж МУКР'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
