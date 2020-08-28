import 'package:tt_firebase/Services/auth.dart';
import 'package:tt_firebase/models/patient.dart';
import 'package:tt_firebase/screens/Home/settings_form.dart';
import 'package:flutter/material.dart';
import 'package:tt_firebase/Services/database.dart';
import 'package:provider/provider.dart';
import 'package:tt_firebase/screens/Home/patient_list.dart';


class Home extends StatelessWidget {

  final AuthService _auth = AuthService(); 

  @override
  Widget build(BuildContext context) {

    void _showSettingsPanel() {
      showModalBottomSheet(context: context, builder: (BuildContext context) {
          return Container(
            color: Colors.blue[300],
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 55.0),
            child: SettingsForm(),
          );
      });
    }

    return StreamProvider<List<Patient>>.value(
      value: DatabaseService().patients,   //patient stream to be wrapped with the widget tree
        child: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text('RPMS'),
          backgroundColor: Colors.blue[400],
          elevation: 0.0, //to eliminate drop shadow
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person), 
              label: Text('Logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
            FlatButton.icon(
              onPressed: () => _showSettingsPanel(), 
              icon: Icon(Icons.settings), 
              label: Text('Settings')
            )
          ],
        ),
        body: PatientList(),
      ),
    );
  }
}