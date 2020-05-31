import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobi/screens/Screen_registration.dart';
import 'home_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobi/modelo/user.dart';
import 'package:mobi/database/app_database.dart';

void main() => runApp(PatientRegisterScreen());

class PatientRegisterScreen extends StatefulWidget {
  _PatientRegisterScreenState createState() => _PatientRegisterScreenState();
}

class _PatientRegisterScreenState extends State<PatientRegisterScreen> {
  final TextEditingController _controllerLogin = TextEditingController();

  final TextEditingController _controllerIdade = TextEditingController();

  File _image;

  Future getImage(bool isCamera) async {
    File image;
    if (isCamera) {
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      _image = image;
    });
  }

  Widget decideImageView() {
    if (_image == null) {
      return InkWell(
          onTap: () {
            getImage(true);
          },
          child: Image.asset(
            'image/default-placeholder-1-2.png',
            width: 200.0,
            height: 200.0,
          ));
    } else {
      return InkWell(
          onTap: () {
            getImage(true);
          },
          child: Image.file(
            _image,
            width: 300.0,
            height: 300.0,
          ));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Paciente'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //IconButton(icon:Icon(Icons.camera_alt,size: 300.0), onPressed: (){getImage(true);}),
            SizedBox(
              height: 10.0,
            ),
            decideImageView(),
            //_image == null? Container(): Image.file(_image,height: 300.0,width: 300.0,),
            TextBox(Icons.person, 'Nome', 'Nome do Paciente', _controllerLogin),
            TextBox(Icons.event_note, 'Idade', 'Idade do Paciente',
                _controllerIdade),
            RaisedButton(
              onPressed: () {
                final String name = _controllerLogin.text;
                final int idade = int.tryParse(_controllerIdade.text);
                final User usuario = User(2, name, idade, null);
                save(usuario).then((id) {
                  findAll().then((users) => debugPrint(users.toString()));
                });
                Navigator.pop(context);
              },
              child: Text(
                'Salvar',
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
