import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyMethodChannel extends StatefulWidget {
  @override
  _MyMethodChannelState createState() => _MyMethodChannelState();
}

class _MyMethodChannelState extends State<MyMethodChannel> {
  static const platform = const MethodChannel('example.com/value'); //ios또는 android와 통신할 수 있게 해주는 channel
  String _value = 'nothing';

  Future<void> getNativeValue() async {
    String value;
    try {
      value = await platform.invokeMethod('getValue');
    } catch (e) {
      value = '네이티브 코드 실행 에러 : ${e.message}';
    }
    setState(() {
        _value = value;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MethodChannel')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_value),
            RaisedButton(child: Text('네이티브 값 얻기'), onPressed: getNativeValue,)
          ],
        )
      )
    );
  }
}