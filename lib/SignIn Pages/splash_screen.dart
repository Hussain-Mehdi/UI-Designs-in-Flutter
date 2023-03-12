import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: [
            Positioned(
              left: 250,
              top: -50,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 181, 2),
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            Positioned(
              left: -130,
              bottom: -70,
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 181, 2),
                    borderRadius: BorderRadius.circular(200)),
              ),
            ),
            Positioned(
              top: 290,
              left: 100,
              child: Container(
                height: 200,
                child: Column(
                  children: [
                    Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("./images/sigin/beer.png")))),
                    Text(
                      "Deeps",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "BEERCAFE",
                      style: TextStyle(
                          color: Colors.black87,
                          letterSpacing: 10,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
