import 'package:flutter/material.dart';

class AddNewUserForm extends StatefulWidget {
  AddNewUserForm({Key key}) : super(key: key);

  @override
  _AddNewUserFormState createState() => _AddNewUserFormState();
}

class _AddNewUserFormState extends State<AddNewUserForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 2.5,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
       child: Text('TBA'),
    );
  }
}