import 'package:flutter/material.dart';
import 'package:mobi/database/app_database.dart';
import 'package:mobi/modelo/user.dart';

class PatientScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pacientes'),
      ),
      body: FutureBuilder<List<User>>(
        initialData: List(),
        future: Future.delayed(Duration(seconds: 1)).then((value) => findAll()),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Text('Loading')
                  ],
                ),
              );
              break;
            case ConnectionState.active:
              // TODO: Handle this case.
              break;
            case ConnectionState.done:
              // TODO: Handle this case.
              break;
          }
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
