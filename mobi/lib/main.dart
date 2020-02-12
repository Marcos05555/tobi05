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
          children: <Widget>[
            Image.asset('image/Vestibular_UEA_2019_1.png'),
            Container(
              height: 120,
              width: 120,
              color: Colors.green,
              child: Column(
                children: <Widget>[Icon(Icons.people), Text('Login')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
