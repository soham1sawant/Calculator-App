import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';

class Display extends ChangeNotifier {
  String exp = "";
  String ans = "";

  void addText(String char) {
    exp += char;
    notifyListeners();
  }

  void clearText() {
    exp = "";
    ans = "";
    notifyListeners();
  }

  void calculate() {
    exp = exp.replaceAll('X', '*');
    Expression expression = Expression.parse(exp);
    final evaluator = const ExpressionEvaluator();
    var context = {'X': '*'};
    ans = evaluator.eval(expression, context).toString();
    notifyListeners();
  }
}