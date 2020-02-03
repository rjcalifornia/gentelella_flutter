import 'package:flutter/material.dart';


class ReceiptForm extends StatefulWidget {
  ReceiptForm({Key key}) : super(key: key);

  @override
  _ReceiptFormState createState() => _ReceiptFormState();
}

class _ReceiptFormState extends State<ReceiptForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Column(
          children: <Widget>[
            Text('Add users page'),
          ],
        ),),
    );
  }
}