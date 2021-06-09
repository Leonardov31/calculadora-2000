import 'package:flutter/material.dart';

import 'calculator_key.dart';

class CalculatorKeyList extends StatelessWidget {
  const CalculatorKeyList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 20.0),
            SizedBox(
              height: 20.0,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorKey(keyValue: '%'),
                  CalculatorKey(keyValue: 'CE'),
                  CalculatorKey(keyValue: 'C'),
                  CalculatorKey(keyValue: '<'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorKey(keyValue: '⅟×'),
                  CalculatorKey(keyValue: 'x^2'),
                  CalculatorKey(keyValue: '√x'),
                  CalculatorKey(keyValue: '÷'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorKey(
                    keyValue: '7',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(
                    keyValue: '8',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(
                    keyValue: '9',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(keyValue: 'X'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorKey(
                    keyValue: '4',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(
                    keyValue: '5',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(
                    keyValue: '6',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(keyValue: '-'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorKey(
                    keyValue: '1',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(
                    keyValue: '2',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(
                    keyValue: '3',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(keyValue: '+'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorKey(
                    keyValue: '+/-',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(
                    keyValue: '0',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(
                    keyValue: '.',
                    keyColor: Colors.black87,
                  ),
                  CalculatorKey(
                    keyValue: '=',
                    keyColor: Color(0xFF234a64),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
