import 'package:flutter/material.dart';
import 'package:mobi/screens/Screen_registration.dart';

class LoginScree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LOGIN'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextBox(Icons.people, 'Nome', 'Nome de usuário'),
            TextBox(Icons.lock_open, 'Senha', 'Senha de usuário'),
            RaisedButton(
              onPressed: () {},
              child: Text(
                'Confirmar',
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ));
  }
}
