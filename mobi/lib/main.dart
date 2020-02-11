import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.green),
      home: Scaffold(
        body: Column(
          children: <Widget>[Image.asset('image/489876.jpg')],
        ),
      ),
    );
  }
}
