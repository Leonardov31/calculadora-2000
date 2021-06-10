import 'package:calculator/App/app_theme.dart';
import 'package:calculator/features/calulator/logic/handle_click.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Features/Calulator/UI/calculator_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HandleClicks()),
      ],
      child: MyApp(),
    ),
  );
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
