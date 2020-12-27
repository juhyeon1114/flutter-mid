import 'package:flutter/material.dart';
import 'package:flutter_mid/src/MyAnimatedContainer.dart';
import 'package:flutter_mid/src/MyAnimatedOpacity.dart';
import 'package:flutter_mid/src/MyDrawer.dart';
import 'package:flutter_mid/src/MySnackBar.dart';
import 'package:flutter_mid/src/MyOrientation.dart';
import 'package:flutter_mid/src/MyTabController.dart';
import 'package:flutter_mid/src/MyFormValidation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.grey,
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        accentColor: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Tutorial')),
        body: Home()),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('AnimatedContainer'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
          },
        ),
        ListTile(
          title: Text('AnimiatedOpacity'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
          },
        ),
        ListTile(
          title: Text('MyDrawer'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyDrawer()));
          },
        ),
        ListTile(
          title: Text('MySnackBar'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MySnackBar()));
          },
        ),
        ListTile(
          title: Text('MyOrientation'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrientation()));
          },
        ),
        ListTile(
          title: Text('MyTabController'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyTabController()));
          },
        ),
        ListTile(
          title: Text('MyFormValidation'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyFormValidation()));
          },
        ),
      ],
    );
  }
}
