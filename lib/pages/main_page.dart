import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final myController = TextEditingController();

  Widget calcButton(String text, Color color) {
    return Container(
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
    );
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
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
                  color: Colors.transparent,
                  child: Column(
                    children: [],
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
                            calcButton("AC", Color(0xffe8788c)),
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
