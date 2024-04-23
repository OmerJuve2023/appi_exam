import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Widget? title;

  final Widget? icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: title!,
            leading: icon!,
          ),
        ],
      ),
    );
  }
}