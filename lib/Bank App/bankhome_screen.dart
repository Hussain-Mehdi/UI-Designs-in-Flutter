import 'package:flutter/material.dart';

class BankHomeScreen extends StatefulWidget {
  BankHomeScreen({super.key});

  @override
  State<BankHomeScreen> createState() => _BankHomeScreenState();
}

class _BankHomeScreenState extends State<BankHomeScreen> {
  List<double> leftPadding = [50, 50, 50, 50, 210];

  List<double> leftPosition = [
    150, //gas
    40, //widthdraw
    100, //report
    180, //request
    50, //bill
  ];
  List<double> topPosition = [
    120, //gas
    40, //widthdraw
    0,
    40, //request
    120, //bill
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color(0xfffbfbfb),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.add_outlined),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("./images/bankapp/pot2.jpg"),
                ),
                Icon(Icons.settings_outlined)
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              width: 220,
              height: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(135),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffdaeeef),
                        //Color(0xffdaeeef),
                        Color.fromARGB(255, 249, 252, 253),
                      ])),
              child: Stack(
                children: [
                  Positioned(
                      left: 60,
                      top: 60,
                      child: Text(
                        "Wallet Balance",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      )),
                  Positioned(
                      left: 50,
                      top: 80,
                      child: Text(
                        "38,704.25\$",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      )),
                  Positioned(
                      left: 80,
                      top: 140,
                      child: Text(
                        "Notification",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            wordSpacing: 2,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      )),
                  Positioned(
                      top: 170,
                      left: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage("./images/bankapp/pot1.jpg"),
                      )),
                  Positioned(
                      top: 190,
                      left: 92,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage("./images/bankapp/pot3.jpg"),
                      )),
                  Positioned(
                      top: 170,
                      left: 155,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage("./images/bankapp/pot4.jpg"),
                      ))
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(40, 40),
                        topRight: Radius.elliptical(40, 40))),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      right: leftPosition[0].toDouble(),
                      top: topPosition[0].toDouble(),
                      child: AnimatedPadding(
                        curve: Curves.bounceInOut,
                        duration: Duration(milliseconds: 5),
                        padding: EdgeInsets.only(left: 50),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4e5255),
                          child: ImageIcon(
                            AssetImage("./images/bankapp/gas.png"),
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: topPosition[1].toDouble(),
                      left: leftPosition[1].toDouble(),
                      child: AnimatedPadding(
                        curve: Curves.bounceInOut,
                        duration: Duration(milliseconds: 5),
                        padding:
                            EdgeInsets.only(left: leftPadding[0].toDouble()),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4e5255),
                          child: ImageIcon(
                            AssetImage("./images/bankapp/withdraw.png"),
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: leftPosition[2].toDouble(),
                      top: topPosition[2].toDouble(),
                      child: AnimatedPadding(
                        curve: Curves.bounceInOut,
                        duration: Duration(milliseconds: 5),
                        padding:
                            EdgeInsets.only(left: leftPadding[0].toDouble()),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4e5255),
                          child: ImageIcon(
                            AssetImage("./images/bankapp/report.png"),
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: topPosition[3].toDouble(),
                      left: leftPosition[3].toDouble(),
                      child: AnimatedPadding(
                        curve: Curves.bounceInOut,
                        duration: Duration(milliseconds: 5),
                        padding:
                            EdgeInsets.only(left: leftPadding[0].toDouble()),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4e5255),
                          child: ImageIcon(
                            AssetImage("./images/bankapp/request.png"),
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: topPosition[4].toDouble(),
                      left: leftPosition[4].toDouble(),
                      child: AnimatedPadding(
                        duration: Duration(seconds: 2),
                        curve: Curves.decelerate,
                        padding:
                            EdgeInsets.only(left: leftPadding[4].toDouble()),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: leftPosition[3].toDouble() == 150
                              ? Colors.transparent
                              : Color(0xff4e5255),
                          child: ImageIcon(
                            AssetImage("./images/bankapp/bill.png"),
                            color: leftPosition[0] == 160
                                ? Colors.transparent
                                : Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 150,
                      child: InkWell(
                        onTap: () {
                          if (leftPadding[0].toDouble() == 50 &&
                              leftPosition[4].toDouble() == 50) {
                            leftPadding[0] = 0;

                            leftPosition[0] = 150;
                            leftPosition[1] = 150;
                            leftPosition[2] = 150;
                            leftPosition[3] = 150;
                            leftPosition[4] = 150;
                            topPosition[0] = 120;
                            topPosition[1] = 120;
                            topPosition[2] = 120;
                            topPosition[3] = 120;
                          } else {
                            leftPadding[0] = 50;

                            leftPosition[0] = 250;
                            leftPosition[1] = 40;
                            leftPosition[2] = 100;
                            leftPosition[3] = 180;
                            leftPosition[4] = 50;

                            topPosition[0] = 120;
                            topPosition[1] = 40;
                            topPosition[2] = 0;
                            topPosition[3] = 40;
                            topPosition[4] = 120;
                          }
                          setState(() {});
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage("./images/bankapp/close.png"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
