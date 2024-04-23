import 'package:appi_exam/widgets/StyledText.dart';
import 'package:appi_exam/widgets/alertDialogContent.dart';
import 'package:flutter/material.dart';

class Pregunta4AP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDialogDemo(),
    );
  }
}

class AlertDialogButton extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController lastNameController;

  AlertDialogButton(this.nameController, this.lastNameController);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showAlertDialog(context);
      },
      child: Text('Mostrar AlertDialog'),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Información'),
          content: AlertDialogContent(
            nameController.text,
            lastNameController.text,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledText("AlertDialog Demo"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nombre'),
              ),
              TextField(
                controller: _lastNameController,
                decoration: const InputDecoration(labelText: 'Apellido'),
              ),
              SizedBox(height: 20),
              AlertDialogButton(_nameController, _lastNameController),
            ],
          ),
        ),
      ),
    );
  }
}
