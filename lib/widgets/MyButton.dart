import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collections = [
    '1. Andres',
    '2. Carla',
    '3. Maria',
    '4. Angela',
    '5. Zarate',
    '6. Brat'
  ];

  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 5 ? index + 2 : 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examen del primer modulo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(flutterText, style: TextStyle(fontSize: 30.0)),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(onPressed: onPressedButton, child: Text('Update'))
            ],
          ),
        ),
      ),
    );
  }
}