import 'package:calculator/App/app_constants.dart';
import 'package:flutter/material.dart';

class CalculatorKey extends StatelessWidget {
  final String keyValue;
  final Color keyColor;

  const CalculatorKey({
    Key? key,
    required this.keyValue,
    this.keyColor = AppColors.black1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: TextButton(
          onPressed: () {},
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
