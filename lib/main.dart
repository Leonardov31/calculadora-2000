import 'package:calculator/App/app_theme.dart';
import 'package:flutter/material.dart';

import 'features/Calulator/Screens/calculator_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora 2000',
      theme: AppTheme.theme,
      home: CalculatorScreen(),
    );
  }
}
