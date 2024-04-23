import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class attachEmail extends StatefulWidget {
  @override
  _attachEmail createState() => _attachEmail();
}

class _attachEmail extends State<attachEmail> {
  @override
  Widget build(BuildContext context) {
    return const Column(children: <Widget>[
      Icon(
        Icons.attach_email,
        size: 170.0,
        color: Colors.indigoAccent,
      ),
      Text(
        "Quinto Tab [Attach Email]",
        style: TextStyle(fontSize: 40.0),
      ),
    ]);
  }
}