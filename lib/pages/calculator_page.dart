import 'package:calculator/models/memory.dart';
import 'package:calculator/widgets/display_widget.dart';
import 'package:calculator/widgets/keyboard_widget.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final Memory memory = Memory();
  _onPressed(String text) {
    setState(() {
      memory.applyCommand(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          DisplayWidget(memory.value),
          KeyboardWidget(cb: _onPressed),
        ],
      ),
    );
  }
}
