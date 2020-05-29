import 'package:flutter/material.dart';

class PatientScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pacientes'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 72.0),
                title: Text('Marcos'),
                subtitle: Text('21'),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 72.0),
                title: Text('Marcos'),
                subtitle: Text('21'),
              ),
            )
          ],
        ));
  }
}
