import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _textEditingController = TextEditingController();

  bool _showMessage = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Ubuntu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Ubuntu'),
        ),
        body: Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 10),
                const Text(
                  'UBUNTU',
                  style: TextStyle(fontSize: 24),
                ),
                TextField(
                  controller: _textEditingController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Digite um número inteiro',
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    String text = _textEditingController.text;
                    if (text.isNotEmpty) {
                      setState(() {
                        _showMessage = true;
                      });
                    }
                  },
                  child: const Text('Saiba mais'),
                ),
                if (_showMessage)
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        'TOTAL DE UBUNTUS: ${_textEditingController.text}',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _showMessage = false;
                          });
                        },
                        child: const Text('OK'),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
