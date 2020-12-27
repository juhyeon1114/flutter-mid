import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(child: Text('Header'), decoration: BoxDecoration(color: Colors.blue),),
            ListTile(
              title: Text('item 1'),
              onTap: () {Navigator.pop(context);},
            ),
            ListTile(
              title: Text('item 2'),
              onTap: () {Navigator.pop(context);},
            ),
            ListTile(
              title: Text('item 3'),
              onTap: () {Navigator.pop(context);},
            ),
          ],
        )
      ),
      appBar: AppBar(title: Text('Drawer'),),
      body: Center(child: Text('Drawer 예제'),),
    );
  }
}