import 'package:calculator/App/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkGrey,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.darkGrey,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
    ),
  );
}
