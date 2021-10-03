import 'package:calculator/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CalcButton extends StatelessWidget {
  final text;
  final color;

  const CalcButton({Key key, this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
