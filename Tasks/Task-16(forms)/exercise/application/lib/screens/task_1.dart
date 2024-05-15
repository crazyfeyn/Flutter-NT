import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Task1State();
  }
}

class _Task1State extends State<Task1> {
  final TextEditingController _textController = TextEditingController();
  String _info = '';
  String _selectedConversion = 'celToFar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temperature Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _textController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Enter temperature',
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (_textController.text.isNotEmpty &&
                          _textController.text.trim().isNotEmpty) {
                        setState(() {
                          _info = convertTemperature(
                              _selectedConversion, _textController.text);
                          _textController.clear();
                        });
                      }
                    },
                    icon: const Icon(Icons.done),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              DropdownButton<String>(
                value: _selectedConversion,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedConversion = newValue!;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: 'celToFar',
                    child: Text('Celcius to Fahrenheit'),
                  ),
                  DropdownMenuItem(
                    value: 'farToCel',
                    child: Text('Fahrenheit to Celcius'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                _info,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String convertTemperature(String conversionType, String temperature) {
    double temp = double.tryParse(temperature) ?? 0.0;
    switch (conversionType) {
      case 'celToFar':
        return '$temp °C is ${(temp * 9 / 5 + 32).toStringAsFixed(2)} °F';
      case 'farToCel':
        return '$temp °F is ${(5 / 9 * (temp - 32)).toStringAsFixed(2)} °C';
      default:
        return '';
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: Task1(),
  ));
}
