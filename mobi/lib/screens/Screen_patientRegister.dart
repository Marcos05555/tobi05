
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobi/screens/Screen_registration.dart';
import 'home_screen.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(PatientRegisterScreen());

class PatientRegisterScreen extends StatefulWidget {
  _PatientRegisterScreenState createState() => _PatientRegisterScreenState();
}

class _PatientRegisterScreenState extends State<PatientRegisterScreen> {
  @override
  
  
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
    var textBox = TextBox(Icons.person, 'Nome', 'Nome do Paciente',null);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Paciente'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //IconButton(icon:Icon(Icons.camera_alt,size: 300.0), onPressed: (){getImage(true);}),
          SizedBox(
            height: 10.0,
          ),
          decideImageView(),
          //_image == null? Container(): Image.file(_image,height: 300.0,width: 300.0,),
          textBox,
          TextBox(Icons.event_note, 'Idade', 'Idade do Paciente',null),
          RaisedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Text(
              'Salvar',
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

