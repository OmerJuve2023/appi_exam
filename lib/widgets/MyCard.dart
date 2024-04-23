import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String? title;

  final IconData? icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(title!),
            leading: Icon(
              icon!,
            ),
            style: ListTileStyle.drawer,
          ),
        ],
      ),
    );
  }
}
