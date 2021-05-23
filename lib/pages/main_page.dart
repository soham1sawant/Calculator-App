import 'package:flutter/material.dart';
import 'package:expressions/expressions.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String exp = "";
  String ans = "";

  void calculate() {
    exp = exp.replaceAll('X', '*');
    Expression expression = Expression.parse(exp);
    final evaluator = const ExpressionEvaluator();
    var context = {'X': '*'};
    ans = evaluator.eval(expression, context).toString();
  }

  Widget calcButton(String text, Color color) {
    return InkWell(
      onTap: () {
        if ((text != 'AC') &&
            (text != '+/-') &&
            (text != '=') &&
            (text != '<')) {
          exp += text;
          setState(() {});
        } else if (text == 'AC') {
          exp = "";
          ans = "";
          setState(() {});
        } else if (text == '=') {
          calculate();
          setState(() {});
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
                        child: Text(
                          exp,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          ans,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0,
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
                            calcButton("AC", Color(0xff61cfbd)),
                            calcButton("+/-", Color(0xff61cfbd)),
                            calcButton("%", Color(0xff61cfbd)),
                            calcButton("/", Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calcButton("7", Colors.white),
                            calcButton("8", Colors.white),
                            calcButton("9", Colors.white),
                            calcButton("X", Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calcButton("4", Colors.white),
                            calcButton("5", Colors.white),
                            calcButton("6", Colors.white),
                            calcButton("-", Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calcButton("1", Colors.white),
                            calcButton("2", Colors.white),
                            calcButton("3", Colors.white),
                            calcButton("+", Color(0xffe8788c)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calcButton("<", Colors.white),
                            calcButton("0", Colors.white),
                            calcButton(".", Colors.white),
                            calcButton("=", Color(0xffe8788c)),
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
