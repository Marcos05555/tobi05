import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.green,
            buttonTheme: ButtonThemeData(
                buttonColor: Colors.green, textTheme: ButtonTextTheme.primary)),
        home: Dashboard());
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UEA')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('image/Vestibular_UEA_2019_1.png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              
              ButtonText('LOGIN', Icons.people),
              ButtonText('CADASTRO', Icons.content_paste),
              ButtonText('INFORMAÇÕES', Icons.info)
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  final String stringName;
  final IconData icone;
  ButtonText(this.stringName, this.icone);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(4.0),
      //decoration: BoxDecoration(color: Colors.black,border: Border.all(width:1),borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: 100,
        width: 110,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              icone,
              color: Colors.white,
              size: 24.0,
            ),
            Text(stringName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                )),
          ],
        ),
      ),
    );
  }
}
