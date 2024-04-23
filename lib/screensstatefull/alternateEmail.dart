import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alternateEmail extends StatefulWidget {
  @override
  _alternateEmailState createState() => _alternateEmailState();
}

class _alternateEmailState extends State<alternateEmail> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Icon(
          Icons.alternate_email,
          size: 170.0,
          color: Colors.indigoAccent,
        ),
        Text(
          "Cuarto Tab [Alternate Email]",
          style: TextStyle(fontSize: 40.0),
        ),
      ],
    );
  }
}
