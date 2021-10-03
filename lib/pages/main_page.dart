import 'package:calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:expressions/expressions.dart';
import 'package:provider/provider.dart';

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

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff22252e),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 140.0, 20.0, 0),
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<Display>(
                          builder: (context, expression, child) => Text(
                            '${expression.exp}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<Display>(
                          builder: (context, expression, child) => Text(
                            '${expression.ans}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff2a2d36),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(text: "AC", color: Color(0xff61cfbd)),
                            CalcButton(text: "+/-", color: Color(0xff61cfbd)),
                            CalcButton(text: "%", color: Color(0xff61cfbd)),
                            CalcButton(text: "/", color: Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(text: "7", color: Colors.white),
                            CalcButton(text: "8", color: Colors.white),
                            CalcButton(text: "9", color: Colors.white),
                            CalcButton(text: "X", color: Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(text: "4", color: Colors.white),
                            CalcButton(text: "5", color: Colors.white),
                            CalcButton(text: "6", color: Colors.white),
                            CalcButton(text: "-", color: Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(text: "1", color: Colors.white),
                            CalcButton(text: "2", color: Colors.white),
                            CalcButton(text: "3", color: Colors.white),
                            CalcButton(text: "+", color: Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(text: "<", color: Colors.white),
                            CalcButton(text: "0", color: Colors.white),
                            CalcButton(text: ".", color: Colors.white),
                            CalcButton(text: "=", color: Color(0xffe8788c)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
