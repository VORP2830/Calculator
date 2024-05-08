import 'package:calculator/widgets/button_row_widget.dart';
import 'package:calculator/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class KeyboardWidget extends StatelessWidget {
  final void Function(String) cb;
  const KeyboardWidget({required this.cb, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRowWidget(
            buttons: [
              ButtonWidget.dark(text: 'AC', big: true, cb: cb),
              ButtonWidget.dark(text: '%', cb: cb),
              ButtonWidget.operation(text: '/', cb: cb),
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(text: '7', cb: cb),
              ButtonWidget(text: '8', cb: cb),
              ButtonWidget(text: '9', cb: cb),
              ButtonWidget.operation(text: 'x', cb: cb),
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(text: '4', cb: cb),
              ButtonWidget(text: '5', cb: cb),
              ButtonWidget(text: '6', cb: cb),
              ButtonWidget.operation(text: '-', cb: cb),
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(text: '1', cb: cb),
              ButtonWidget(text: '2', cb: cb),
              ButtonWidget(text: '3', cb: cb),
              ButtonWidget.operation(text: '+', cb: cb),
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(text: '0', big: true, cb: cb),
              ButtonWidget(text: '.', cb: cb),
              ButtonWidget.operation(text: '=', cb: cb),
            ],
          ),
        ],
      ),
    );
  }
}
