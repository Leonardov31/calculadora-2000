import 'package:flutter/material.dart';

import 'components/calculator_history.dart';
import 'components/display.dart';
import 'components/key_pad.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  late double _screenWidth;

  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora 2000'),
        actions: [
          Visibility(
            visible: _screenWidth < 560,
            child: IconButton(
              onPressed: () {
                showHistory(context);
              },
              icon: Icon(Icons.history),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.login),
          ),
        ],
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Display(),
                  KeyPad(),
                ],
              ),
            ),
            Visibility(
              visible: _screenWidth >= 560,
              child: History(),
            ),
          ],
        ),
      ),
    );
  }
}

Future<dynamic> showHistory(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return History();
    },
  );
}
