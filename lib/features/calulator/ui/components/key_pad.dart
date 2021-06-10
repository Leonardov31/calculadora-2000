import 'package:calculator/App/app_constants.dart';
import 'package:flutter/material.dart';

import 'calculator_key.dart';

class KeyPad extends StatelessWidget {
  const KeyPad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorKey(keyValue: KeyStrings.percent),
                CalculatorKey(keyValue: KeyStrings.clearAll),
                CalculatorKey(keyValue: KeyStrings.clear),
                CalculatorKey(keyValue: KeyStrings.delete),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorKey(keyValue: KeyStrings.inverse),
                CalculatorKey(keyValue: KeyStrings.powerOfTwo),
                CalculatorKey(keyValue: KeyStrings.squareRoot),
                CalculatorKey(keyValue: KeyStrings.divide),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorKey(
                  keyValue: KeyStrings.seven,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(
                  keyValue: KeyStrings.eight,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(
                  keyValue: KeyStrings.nine,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(keyValue: KeyStrings.multiply),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorKey(
                  keyValue: KeyStrings.four,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(
                  keyValue: KeyStrings.five,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(
                  keyValue: KeyStrings.six,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(keyValue: KeyStrings.subtract),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorKey(
                  keyValue: KeyStrings.one,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(
                  keyValue: KeyStrings.two,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(
                  keyValue: KeyStrings.three,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(keyValue: KeyStrings.add),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorKey(
                  keyValue: KeyStrings.negate,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(
                  keyValue: KeyStrings.zero,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(
                  keyValue: KeyStrings.decimal,
                  keyColor: Colors.black87,
                ),
                CalculatorKey(
                  keyValue: KeyStrings.equals,
                  keyColor: AppColors.blueGrey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
