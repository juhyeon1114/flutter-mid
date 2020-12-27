import 'package:flutter/material.dart';

class MySwipeToDismiss extends StatefulWidget {
  @override
  _MySwipeToDismissState createState() => _MySwipeToDismissState();
}

class _MySwipeToDismissState extends State<MySwipeToDismiss> {
  final items = List<String>.generate(20, (i) => 'item ${i+1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MySwipeToDismiss')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            background: Container(color: Colors.lightBlue),
            // direction: DismissDirection.startToEnd,
            onDismissed: (direction) { //direction == swipte한 방향 (상/하/좌/우)
              setState(() {
                items.removeAt(index);
              });
            },
            key: Key(items[index]),
            child: ListTile(title: Text(items[index]))
          );
        }
      )
    );
  }
}