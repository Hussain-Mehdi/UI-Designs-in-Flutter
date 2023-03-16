import 'package:flutter/material.dart';

class MoneyDashboard extends StatelessWidget {
  const MoneyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff05032a),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          fit: StackFit.loose,
          children: [
            Positioned(
              top: MediaQuery.of(context).size.width / 3 + 30,
              left: MediaQuery.of(context).size.width / 4,
              child: Text(
                "Manage\nYour Money\nOn The Go",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35,
                    color: Color.fromARGB(255, 224, 224, 224),
                    fontWeight: FontWeight.w800),
              ),
            ),
            Positioned(
              top: 60,
              left: MediaQuery.of(context).size.width / 3,
              child: Text(
                "OTGNK",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 10,
                    color: Color.fromARGB(255, 75, 42, 236),
                    fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 300),
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("./images/moneymanagement/dashboard.png"),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(top: 650, left: 100),
              height: 60,
              width: 160,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(193, 117, 74, 255),
                        blurRadius: 30,
                        spreadRadius: 2)
                  ],
                  color: Color(0xff492ab3),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Color.fromARGB(255, 228, 228, 228),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Positioned(
              top: 730,
              left: 160,
              child: Text(
                "Log In",
                style: TextStyle(
                    color: Color.fromARGB(255, 228, 228, 228),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
