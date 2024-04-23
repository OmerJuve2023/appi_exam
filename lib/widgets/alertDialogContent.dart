import 'package:flutter/material.dart';

class AlertDialogContent extends StatelessWidget {
  final String? name;
  final String? lastName;

  AlertDialogContent(this.name, this.lastName);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Text(
            "Nombre:\n $name!",
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          Text("Apellido:\n $lastName!",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              )),
        ],
      ),
    );
  }
}
