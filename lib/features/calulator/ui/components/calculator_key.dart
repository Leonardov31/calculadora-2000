import 'package:calculator/App/app_constants.dart';
import 'package:calculator/features/calulator/logic/handle_click.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorKey extends StatelessWidget {
  final String keyValue;
  final Color keyColor;
  final int flex;

  CalculatorKey({
    Key? key,
    required this.keyValue,
    this.keyColor = AppColors.black1,
    this.flex = 1,
  }) : super(key: key);

  CalculatorKey.black({
    Key? key,
    required this.keyValue,
    this.keyColor = AppColors.black2,
    this.flex = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: TextButton(
          onPressed: () => context.read<HandleClicks>().btnOnClick(keyValue),
          child: Text(
            keyValue,
            style: TextStyle(fontSize: 18),
          ),
          style: TextButton.styleFrom(
            backgroundColor: keyColor,
          ),
        ),
      ),
    );
  }
}
