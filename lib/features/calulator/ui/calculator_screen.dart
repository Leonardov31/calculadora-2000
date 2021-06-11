import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/history_list.dart';
import 'components/display.dart';
import 'components/key_pad.dart';
import 'components/history_button.dart';
import 'components/login_logout_button.dart';
import 'components/user_email.dart';

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
    final firebaseUser = context.watch<User?>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora 2000'),
        actions: [
          HistoryButton(screenWidth: _screenWidth),
          UserEmail(firebaseUser: firebaseUser),
          LoginLogoutButton(firebaseUser: firebaseUser),
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
