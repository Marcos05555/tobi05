import 'dart:io';


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobi/screens/Screen_registration.dart';
File imageFile;

class PatientRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text('Registro de Paciente'),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            LodingScreen(),
          ],
        ),
      ),
    );
    return scaffold;
  }
}

class LodingScreen extends StatefulWidget {
  @override
  _LodingScreenState createState() => _LodingScreenState();
}

class _LodingScreenState extends State<LodingScreen> {
  
  _openCamera(BuildContext context) async{
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState((){
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

Widget _decideImageView(BuildContext context){
  if(imageFile == null){
    return IconButton(icon: Icon(Icons.camera_alt,color: Colors.black,size: 40,), onPressed:(){ _openCamera(context);});
  }
  else{
    Image.file(imageFile, width: 10,height: 10);
  }
}







  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _decideImageView(context),
            TextBox(Icons.person, 'Nome', 'Nome do paciente'),
              TextBox(Icons.assignment_ind, 'Idade', 'Idade do paciente'),
          ]
    );
  }



  
}


