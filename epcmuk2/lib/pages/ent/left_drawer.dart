import 'package:flutter/material.dart';

import 'package:epcmuk/pages/ent/menu_list_tile.dart';


class LeftDrawerWidget extends StatelessWidget {
  const LeftDrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('',
            style: TextStyle(color: Colors.white),),
            accountEmail: Text('info@pc.edu.kg',
            style: TextStyle(color: Colors.white),),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/otd.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}
