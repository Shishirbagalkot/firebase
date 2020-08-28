import 'package:flutter/material.dart';
import 'package:tt_firebase/models/patient.dart';

class PatientTile extends StatelessWidget {

  final Patient patient;
  PatientTile({this.patient});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
          ),
          title: Text(patient.name),
          subtitle: Text('Bp:${patient.bp} \nOxi:${patient.oxi} \nTemp:${patient.temp} \nEcg:${patient.ecg}'),
        ),
      ),
    );
  }
}