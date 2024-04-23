import 'package:appi_exam/widgets/StyledText.dart';
import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  @override
  _TextFields createState() => _TextFields();
}

class _TextFields extends State<TextFields> {
  String text = "";
  final TextEditingController controller = TextEditingController();

  void onSubmitted(String value) {
    setState(() {
      text = text + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledText("AppEProductoAP"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  hintText: "Ingrese su nombre",
                  labelText: "Apellido",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
                onSubmitted: onSubmitted,
                controller: controller,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
