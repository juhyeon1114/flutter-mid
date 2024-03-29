import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar')
      ),
      body: Builder(
        builder: (context) => Center( // Builder 는 새로운 컨텍스트를 만들어서 화면을 그릴 수 있다.
          child: RaisedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('뭐가 완료되었습니다.'),
                action: SnackBarAction(
                  label: '취소',
                  onPressed: () {
                    //눌럿을 때 동작
                  },
                )
              );

              Scaffold.of(context).showSnackBar(snackBar);
            },
            child: Text('Show SnackBar')
          ) 
        ),
      )
    );
  }
}