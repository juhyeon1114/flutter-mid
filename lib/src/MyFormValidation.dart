import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>();
  FocusNode nameFocusNode;
  final nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameFocusNode = FocusNode();
  }

  @override
  void dispose() {
    nameFocusNode.dispose(); // FocusNode는 사용하지 않을 때는 해제 해줘야됨
    nameController.dispose();
    super.dispose();
  }

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
              TextFormField( // TextFormField와 TextField의 차이점은 validator가 있냐 없냐
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
              TextField(
                controller: nameController,
                focusNode: nameFocusNode,
                autofocus: true,
                decoration: InputDecoration(hintText: '이름을 입력하세요', border: InputBorder.none, labelText: '이름'),
                onChanged: (text) {print(text);},
              ),
              RaisedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(nameFocusNode);
                },
                child: Text('포커스'),
              ),
              RaisedButton(
                onPressed: () {
                  print(nameController.text);
                  showDialog(context: context, builder: (context) => AlertDialog(content: Text(nameController.text)));
                },
                child: Text('TextField 값 확인'),
              )
            ],
          )
        )
      ),
    );
  }
}