import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier {
  String display = '0';
  String equation = '';
  double? firstNumber;
  String? operation;
  bool newNumber = true;

  void inputNumber(String number) {
    if (display == 'Error') {
      clear();
    }

    if (newNumber) {
      display = number;
      newNumber = false;
    } else {
      if (display == '0') {
        display = number;
      } else {
        display = display + number;
      }
    }
    notifyListeners();
  }

  void decimal() {
    if (display == 'Error') {
      clear();
    }

    if (newNumber) {
      display = '0.';
      newNumber = false;
    } else if (!display.contains('.')) {
      display = display + '.';
    }
    notifyListeners();
  }

  void selectOperator(String op) {
    if (display == 'Error') return;

    firstNumber = double.tryParse(display);
    operation = op;
    equation = '$display $op';
    newNumber = true;
    notifyListeners();
  }

  void calculate() {
    if (firstNumber == null || operation == null || newNumber) {
      return;
    }

    double secondNumber = .tryParse(display) ?? 0;
    double result = 0;

    if (operation == '÷' && secondNumber == 0) {
      equation = '$firstNumber ÷ 0';
      display = 'Error';
      firstNumber = null;
      operation = null;
      newNumber = true;
      notifyListeners();
      return;
    }

    if (operation == '+') {
      result = firstNumber! + secondNumber;
    } else if (operation == '-') {
      result = firstNumber! - secondNumber;
    } else if (operation == '×') {
      result = firstNumber! * secondNumber;
    } else if (operation == '÷') {
      result = firstNumber! / secondNumber;
    }

    equation = '$firstNumber $operation $secondNumber';

    if (result == result.toInt()) {
      display = result.toInt().toString();
    } else {
      display = result.toString();
    }

    firstNumber = null;
    operation = null;
    newNumber = true;
    notifyListeners();
  }

  void clear() {
    display = '0';
    equation = '';
    firstNumber = null;
    operation = null;
    newNumber = true;
    notifyListeners();
  }

  void deleteLast() {
    if (display == 'Error' || newNumber) return;

    if (display.length > 1) {
      display = display.substring(0, display.length - 1);
    } else {
      display = '0';
      newNumber = true;
    }
    notifyListeners();
  }
}