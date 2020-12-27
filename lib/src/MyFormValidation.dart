import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyFormValidation')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  return value.isEmpty ? '공백은 허용되지 않습니다.' : null;
                },
              ),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    // 뭔가 하면됨
                    Scaffold.of(_formKey.currentContext).showSnackBar(SnackBar(content: Text('처리중'),));
                  }
                },
                child: Text('완료')
              ),
            ],
          )
        )
      ),
    );
  }
}