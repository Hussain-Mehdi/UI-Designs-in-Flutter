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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.add_outlined),
                CircleAvatar(),
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
                  children: [],
                ),
              ),
            )
          ],
        ));
  }
}
