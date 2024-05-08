import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DAFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);
  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;
  const ButtonWidget({
    required this.text,
    this.big = false,
    this.color = DAFAULT,
    required this.cb,
  });
  const ButtonWidget.big({
    required this.text,
    this.big = true,
    this.color = DAFAULT,
    required this.cb,
  });
  const ButtonWidget.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.cb,
  });
  const ButtonWidget.dark({
    required this.text,
    this.big = false,
    this.color = DARK,
    required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        onPressed: () => cb(text),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
