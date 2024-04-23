import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Iconss extends StatelessWidget {
  final IconData? icon;

  Iconss({this.icon});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.greenAccent,
      size: 30.0,
    );
  }
}
