import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class archiveSharp extends StatefulWidget {
  @override
  _archiveSharp createState() => _archiveSharp();
}

class _archiveSharp extends State<archiveSharp> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Icon(
          Icons.archive_sharp,
          size: 170.0,
          color: Colors.indigoAccent,
        ),
        Text(
          "Sexto Tab [Archive Sharp]",
          style: TextStyle(fontSize: 40.0),
        ),
      ],
    );
  }
}
