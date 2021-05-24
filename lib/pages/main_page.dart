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
  Widget calcButton(BuildContext context, String text, Color color) {
    return InkWell(
      onTap: () {
        var expression = context.read<Display>();
        if ((text != 'AC') &&
            (text != '+/-') &&
            (text != '=') &&
            (text != '<')) {
          expression.addText(text);
        } else if (text == 'AC') {
          expression.clearText();
        } else if (text == '=') {
          expression.calculate();
        }
      },
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: color,
            ),
          ),
        ),
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: Color(0xff2b2936),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }

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
                            calcButton(context, "AC", Color(0xff61cfbd)),
                            calcButton(context, "+/-", Color(0xff61cfbd)),
                            calcButton(context, "%", Color(0xff61cfbd)),
                            calcButton(context, "/", Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calcButton(context, "7", Colors.white),
                            calcButton(context, "8", Colors.white),
                            calcButton(context, "9", Colors.white),
                            calcButton(context, "X", Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calcButton(context, "4", Colors.white),
                            calcButton(context, "5", Colors.white),
                            calcButton(context, "6", Colors.white),
                            calcButton(context, "-", Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calcButton(context, "1", Colors.white),
                            calcButton(context, "2", Colors.white),
                            calcButton(context, "3", Colors.white),
                            calcButton(context, "+", Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calcButton(context, "<", Colors.white),
                            calcButton(context, "0", Colors.white),
                            calcButton(context, ".", Colors.white),
                            calcButton(context, "=", Color(0xffe8788c)),
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