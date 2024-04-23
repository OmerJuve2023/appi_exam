import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pregunta5AP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DigitSumDemo(),
    );
  }
}

class DigitSumDemo extends StatefulWidget {
  @override
  _DigitSumDemoState createState() => _DigitSumDemoState();
}

class _DigitSumDemoState extends State<DigitSumDemo> {
  final TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suma de Dígitos'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Ingrese un número de 6 dígitos'),
                maxLength: 6,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _calculateDigitSum();
                },
                child: Text('Calcular Suma de Dígitos'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _calculateDigitSum() {
    String numberString = _numberController.text;
    if (numberString.length != 6) {
      _showAlertDialog('Error', 'Por favor ingrese un número de 6 dígitos.');
      return;
    }

    /*int number = int.tryParse(numberString) ?? 0;*/
    int firstDigit = int.parse(numberString.substring(0, 1));
    int lastDigit = int.parse(numberString.substring(5, 6));

    int evenDigitsSum = 0;
    for (int i = 1; i < 5; i += 2) {
      evenDigitsSum += int.parse(numberString.substring(i, i + 1));
    }

    int totalSum = firstDigit + lastDigit + evenDigitsSum;

    _showAlertDialog(
        'Suma de Dígitos', 'La suma del primer, último y numeros pares es: $totalSum');
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
