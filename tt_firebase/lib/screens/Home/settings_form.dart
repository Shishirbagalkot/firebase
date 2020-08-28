import 'package:flutter/material.dart';
import 'package:tt_firebase/Shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formkey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();

  //form values
  String _currentName;
  int _currentBp;
  int _currentOxi;
  int _currentTemp;
  int _currentEcg;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          Text(
            'Enter data',
            style: TextStyle(fontSize: 15.0),
          ),
          SizedBox(height: 5.0),
          TextFormField(
            decoration: textInputDecoration,
            validator: (val) => val.isEmpty ? 'Please enter your name':null,
            onChanged: (val) => setState(() => _currentName = val),
          ),
        ],
      ),
    );
  }
}