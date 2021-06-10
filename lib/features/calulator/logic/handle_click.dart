import 'package:calculator/app/app_constants.dart';
import 'package:flutter/material.dart';

import 'operations.dart';

class HandleClicks with ChangeNotifier {
  double _numberA = 0;
  double _numberB = 0;
  String _history = '';
  String _textToDisplay = '';
  late String _result;
  late String _operation;

  String get history => _history;
  String get textToDisplay => _textToDisplay;

  btnOnClick(String keyValue) {
    switch (keyValue) {
      case KeyStrings.clear:
        clear();
        break;
      case KeyStrings.clearAll:
        clear();
        _history = '';
        break;
      case KeyStrings.delete:
        _result = Operations.del(_result);
        break;
      case KeyStrings.add:
        mathKey(keyValue);
        break;
      case KeyStrings.multiply:
        mathKey(keyValue);
        break;
      case KeyStrings.divide:
        mathKey(keyValue);
        break;
      // case KeyStrings.negate:
      //   _numberA = _numberA * -1;
      //   break;
      case KeyStrings.subtract:
        mathKey(keyValue);
        break;
      case KeyStrings.equals:
        performOperation();
        break;
      default:
        _result = _textToDisplay + keyValue;
    }

    _textToDisplay = _result;
    notifyListeners();
  }

  void performOperation() {
    _numberB = double.parse(_textToDisplay);

    if (_operation == KeyStrings.add) {
      _result = Operations.add(_numberA, _numberB).toString();
    }

    if (_operation == KeyStrings.multiply) {
      _result = Operations.multiply(_numberA, _numberB).toString();
    }

    if (_operation == KeyStrings.subtract) {
      _result = Operations.subtract(_numberA, _numberB).toString();
    }

    if (_operation == KeyStrings.divide) {
      _result = Operations.divide(_numberA, _numberB).toString();
    }

    _history += ' $_numberB';
  }

  void mathKey(String keyValue) {
    _numberA = double.parse(_textToDisplay);
    _result = '';
    _operation = keyValue;
    _history = '$_numberA $_operation';
  }

  void clear() {
    _textToDisplay = '';
    _numberA = 0;
    _numberB = 0;
    _result = '';
  }
}
