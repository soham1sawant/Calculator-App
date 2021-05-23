import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final myController = TextEditingController();

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
                    children: [
                      TextField(
                        controller: myController,
                      ),
                      TextField(),
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
                            Container(
                              child: Center(
                                child: Text(
                                  "AC",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Color(0xff4fedd0),
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "+/-",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Color(0xff4fedd0),
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Color(0xff4fedd0),
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "/",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Color(0xffaf767c),
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "X",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Color(0xffaf767c),
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Color(0xffaf767c),
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Color(0xffaf767c),
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  "<",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  ".",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "=",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Color(0xffaf767c),
                                  ),
                                ),
                              ),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2936),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
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
