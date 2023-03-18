import 'package:flutter/material.dart';

class BankHomeScreen extends StatelessWidget {
  const BankHomeScreen({super.key});

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
                      left: 0,
                      top: 120,
                      child: AnimatedPadding(
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
                      top: 40,
                      left: 20,
                      child: AnimatedPadding(
                        duration: Duration(milliseconds: 5),
                        padding: EdgeInsets.only(left: 50),
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
                      left: 100,
                      child: AnimatedPadding(
                        duration: Duration(milliseconds: 5),
                        padding: EdgeInsets.only(left: 50),
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
                      top: 40,
                      left: 180,
                      child: AnimatedPadding(
                        duration: Duration(milliseconds: 5),
                        padding: EdgeInsets.only(left: 50),
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
                      top: 120,
                      left: 210,
                      child: AnimatedPadding(
                        duration: Duration(milliseconds: 5),
                        padding: EdgeInsets.only(left: 50),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4e5255),
                          child: ImageIcon(
                            AssetImage("./images/bankapp/bill.png"),
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 110,
                      left: 150,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage("./images/bankapp/close.png"),
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
