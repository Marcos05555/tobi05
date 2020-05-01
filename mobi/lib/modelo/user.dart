import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class User{
  final int id;
  final String logindeuser;
  final String senhadeuser;
  // final File   fotodeuser;

  User( this.id , this.logindeuser, this.senhadeuser);
  String toString(){
    return 'Contact{id: $id , name: $logindeuser, senha: $senhadeuser}';
  }
}

class Utility {
 
  static Image imageFromBase64String(String base64String) {
    return Image.memory(
      base64Decode(base64String),
      fit: BoxFit.fill,
    );
  }
 
  static Uint8List dataFromBase64String(String base64String) {
    return base64Decode(base64String);
  }
 
  static String base64String(Uint8List data) {
    return base64Encode(data);
  }
}