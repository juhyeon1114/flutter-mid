import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    // return PageView(
    //   children: [
    //     Container(color: Colors.red),
    //     Container(color: Colors.green),
    //     Container(color: Colors.blue),
    //     Container(color: Colors.yellow),
    //   ],
    // );
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bus)),
              ],
            ),
            title: Text('Tabs Demo')
          ),
          body: TabBarView(children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bus),
          ],)
        ),
      )
    );
  }
}