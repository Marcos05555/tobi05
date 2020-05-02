import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class User{
  final int id;
  final String logindeuser;
  final String senhadeuser;
   final String fotodeuser;

  User( this.id , this.logindeuser, this.senhadeuser, this.fotodeuser);
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
  
  static String base64String(Uint8List data) {
    return base64Encode(data);
  }
}
