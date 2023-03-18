import 'package:flutter/material.dart';

class BankDashboard extends StatelessWidget {
  const BankDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color(0xffdef2f0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(125),
                  color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                      left: 90,
                      top: 20,
                      child: Icon(
                        Icons.check,
                        weight: 1,
                        color: Colors.black45,
                        size: 50,
                      )),
                  Positioned(
                      left: 80,
                      top: 90,
                      child: Text(
                        "Done",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w300),
                      )),
                  Positioned(
                      left: 40,
                      top: 150,
                      child: Container(
                        width: 140,
                        child: Text(
                          "You successfully have refilled the car.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              wordSpacing: 2,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                        ),
                      ))
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(40, 40),
                        topRight: Radius.elliptical(40, 40))),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      top: 100,
                      left: 60,
                      child: Text(
                        "Amount".toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(167, 0, 0, 0)),
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 130,
                            left: 70,
                            child: Text(
                              "25".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(167, 0, 0, 0)),
                            ),
                          ),
                          Positioned(
                            top: 140,
                            left: 100,
                            child: Text(
                              "Ltr".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(167, 0, 0, 0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Positioned(
                          top: 130,
                          left: 210,
                          child: Text(
                            "34.45".toUpperCase(),
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(167, 0, 0, 0)),
                          ),
                        ),
                        Positioned(
                          top: 140,
                          left: 275,
                          child: Text(
                            "\$".toUpperCase(),
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(167, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 100,
                      left: 210,
                      child: Text(
                        "withdraw".toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(167, 0, 0, 0)),
                      ),
                    ),
                    Positioned(
                      top: 180,
                      left: 53,
                      child: Text(
                        "----------------------------",
                        style: TextStyle(
                            letterSpacing: 5, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Row(
                      children: [
                        ImageIcon(AssetImage("./images/bankapp/download"))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
