import 'package:appi_exam/widgets/MyCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pregunta1AP extends StatefulWidget {
  @override
  _Pregunta1AP createState() => _Pregunta1AP();
}

class _Pregunta1AP extends State<Pregunta1AP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "App Producto Ap",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyCard(
                title: "AlternateEmail",
                icon: Icons.alternate_email,
              ),
              MyCard(
                title: "AttachEmail",
                icon: Icons.attach_email,
              ),
              MyCard(
                title: "ArchiveSharp",
                icon: Icons.archive,
              ),
            ],
          ),
        ));
  }
}