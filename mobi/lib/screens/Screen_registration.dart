import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CADASTRO'),
      ),
      body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextBox(Icons.people, 'Nome', 'Nome de usuário'),
            TextBox(Icons.lock_outline, 'Senha', 'Senha de usuário'),
            TextBox(Icons.lock_open, 'Confimar senha', 'Confimar senha de usuário'),
            RaisedButton(
              onPressed: () {},
              child: Text(
                'Confirmar',
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  final IconData iconformBox;
  final String spaceText;
  final String spaceSobText;
  TextBox(this.iconformBox, this.spaceText, this.spaceSobText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        style: TextStyle(fontSize: 24.0),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: spaceText,
            hintText: spaceSobText,
            icon: Icon(iconformBox)),
      ),
    );
  }
}
