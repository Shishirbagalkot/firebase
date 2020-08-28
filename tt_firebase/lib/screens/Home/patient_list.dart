import 'package:flutter/material.dart';
import 'package:tt_firebase/models/patient.dart';
import 'package:provider/provider.dart';
import 'package:tt_firebase/screens/Home/patient_tile.dart';

class PatientList extends StatefulWidget {
  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  @override
  Widget build(BuildContext context) {

    final patients = Provider.of<List<Patient>>(context);
    //patients.forEach((patient) {
    //  print(patient.name);
    //  print(patient.bp);
    //  print(patient.oxi);
    //  print(patient.temp);
    //  print(patient.ecg);
    //});

    return ListView.builder(
      itemCount: patients.length,
      itemBuilder: (context, index) {
        return PatientTile(patient: patients[index]);
      },
    );
  }
}