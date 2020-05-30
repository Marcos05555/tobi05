import 'package:flutter/material.dart';
import 'package:mobi/database/app_database.dart';
import 'package:mobi/modelo/user.dart';

class PatientScreen extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pacientes'),
      ),
      body: FutureBuilder(
        future: findAll(),
        builder: (context, snapshot) {
          final List<User> pacientes = snapshot.data;
           return ListView.builder(
            itemCount: pacientes.length,
            itemBuilder: (context, index) {
              final User paciente = pacientes[index];
              return _ContactItem(paciente);
            },
          );
        },
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final User paciente;
  _ContactItem(this.paciente);

  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: FlutterLogo(size: 72.0),
        title: Text(paciente.logindeuser),
        subtitle: Text(paciente.idade.toString()),
      ),
    );
  }
}
