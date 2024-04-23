import 'package:appi_exam/widgets/StyledText.dart';
import 'package:flutter/material.dart';

class Pregunta6AP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextTransformationDemo(),
    );
  }
}

class TextTransformationDemo extends StatefulWidget {
  @override
  _TextTransformationDemoState createState() => _TextTransformationDemoState();
}

class _TextTransformationDemoState extends State<TextTransformationDemo> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledText("Transformación de Texto"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(labelText: 'Ingrese un nombre'),
                maxLength: 50,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _transformText();
                },
                child: Text('Transformar Texto'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _transformText() {
    String inputText = _textController.text.trim();
    if (inputText.isEmpty) {
      _showAlertDialog('Error', 'Por favor ingrese un nombre.');
      return;
    }

    String reversedText = inputText.split('').reversed.join();
    String transformedText = reversedText.substring(0, 1).toUpperCase() +
        reversedText.substring(1, reversedText.length - 1).toLowerCase() +
        reversedText.substring(reversedText.length - 1).toUpperCase();

    _showAlertDialog(
        'Texto Transformado', 'Nombre transformado: $transformedText');
  }

  void _showAlertDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
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
