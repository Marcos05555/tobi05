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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('image/Vestibular_UEA_2019_1.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding:EdgeInsets.all(8.0) ,
                height: 100,
                width: 150,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[Icon(Icons.people,color: Colors.white,), Text('LOGIN',style:TextStyle(color: Colors.white)),],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
