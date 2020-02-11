import 'package:flutter/material.dart';

void main() => runApp(MyvvvApp());

class MyvvvApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboarwwwweed'),
        ), 
        body: Column(
          children: <Widget>[
            Image.asset('images/Vestibular-UEA-2019-1.png')
          ], 
        ), 
      ), 
    ); 
  }
}