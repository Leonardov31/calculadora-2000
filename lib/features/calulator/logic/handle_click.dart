import 'package:calculator/app/app_constants.dart';
import 'package:calculator/services/firebase_persistence_service.dart';
import 'package:flutter/material.dart';
import 'operations.dart';

class HandleClicks with ChangeNotifier {
  String _history = '';
  String _textToDisplay = '0';

  final _operations = [
    KeyStrings.mod,
    KeyStrings.divide,
    KeyStrings.multiply,
    KeyStrings.subtract,
    KeyStrings.add,
  ];

  late String _operation = '';
  num _num1 = 0;
  num _num2 = 0;
  final firebasePersistence = FirebasePersistenceService();

  String get history => _history;
  String get textToDisplay => _textToDisplay;

  btnOnClick(String keyValue) {
    if (keyValue == KeyStrings.allClear) {
      _allClear();
    } else if (keyValue == KeyStrings.delete) {
      _deleteDigit();
    } else if (_operations.contains(keyValue)) {
      _setOperation(keyValue);
    } else if (keyValue == KeyStrings.equals) {
      _showResult();
    } else {
      _concatenateDigit(keyValue);
    }

    notifyListeners();
  }

  _allClear() {
    _textToDisplay = '0';
    _history = '';
  }

  _setOperation(String operation) {
    _num1 = num.parse(_textToDisplay);
    _operation = operation;
    _history = _textToDisplay + ' ' + _operation;
    _textToDisplay = '';
  }

  _showResult() {
    _num2 = num.parse(_textToDisplay);
    _history = _history + ' ' + '$_num2';

    if (_operation == KeyStrings.add) {
      _textToDisplay = Operations.add(_num1, _num2).toString();
    }

    if (_operation == KeyStrings.multiply) {
      _textToDisplay = Operations.multiply(_num1, _num2).toString();
    }

    if (_operation == KeyStrings.subtract) {
      _textToDisplay = Operations.subtract(_num1, _num2).toString();
    }

    if (_operation == KeyStrings.divide) {
      _textToDisplay = Operations.divide(_num1, _num2).toString();
    }

    if (_operation == KeyStrings.mod) {
      _textToDisplay = Operations.mod(_num1, _num2).toString();
    }

    final dbPesrsitence = FirebasePersistenceService();
    dbPesrsitence.addData(_history, _textToDisplay);
  }

  _concatenateDigit(String digit) {
    if (digit == KeyStrings.decimal &&
        _textToDisplay.contains(KeyStrings.decimal)) {
      return;
    }
    if ((num.tryParse(_textToDisplay) ?? 1) == 0 &&
        digit != KeyStrings.decimal) {
      _textToDisplay = digit;
    } else {
      _textToDisplay = _textToDisplay + digit;
    }
  }

  _deleteDigit() {
    if (num.parse(_textToDisplay) == 0) {
      _textToDisplay = '0';
      return;
    }
    _textToDisplay = Operations.del(_textToDisplay);
  }
}
