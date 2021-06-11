import 'package:calculator/app/app_constants.dart';
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
                CalculatorKey.black(keyValue: KeyStrings.allClear),
                CalculatorKey.black(keyValue: KeyStrings.mod),
                CalculatorKey.black(keyValue: KeyStrings.delete),
                CalculatorKey.black(keyValue: KeyStrings.divide),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorKey(keyValue: KeyStrings.seven),
                CalculatorKey(keyValue: KeyStrings.eight),
                CalculatorKey(keyValue: KeyStrings.nine),
                CalculatorKey.black(keyValue: KeyStrings.multiply),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorKey(keyValue: KeyStrings.four),
                CalculatorKey(keyValue: KeyStrings.five),
                CalculatorKey(keyValue: KeyStrings.six),
                CalculatorKey.black(keyValue: KeyStrings.subtract),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorKey(keyValue: KeyStrings.one),
                CalculatorKey(keyValue: KeyStrings.two),
                CalculatorKey(keyValue: KeyStrings.three),
                CalculatorKey.black(keyValue: KeyStrings.add),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorKey(flex: 2, keyValue: KeyStrings.zero),
                CalculatorKey(keyValue: KeyStrings.decimal),
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
