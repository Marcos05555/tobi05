import 'package:flutter/material.dart';
import 'package:mobi/screens/Screen_registration.dart';

import 'home_screen.dart';

class LoginScree extends StatelessWidget {
  //  final TextEditingController _controllerLogin = TextEditingController();
  //  final TextEditingController _controllerSenha = TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LOGIN'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextBox(Icons.people, 'Nome', 'Nome de usuário',null),
            TextBox(Icons.lock_open, 'Senha', 'Senha de usuário',null),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));},
              child: Text(
                'Confirmar',
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ));
  }
}
 