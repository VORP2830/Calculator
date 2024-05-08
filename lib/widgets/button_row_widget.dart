import 'package:calculator/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class ButtonRowWidget extends StatelessWidget {
  final List<ButtonWidget> buttons;
  const ButtonRowWidget({required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (buttonList, button) {
          buttonList.isEmpty
              ? buttonList.add(button)
              : buttonList.addAll([
                  const SizedBox(
                    width: 1,
                  ),
                  button,
                ]);
          return buttonList;
        }),
      ),
    );
  }
}
