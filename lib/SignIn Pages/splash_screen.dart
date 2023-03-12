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
              bottom: -80,
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 181, 2),
                    borderRadius: BorderRadius.circular(200)),
              ),
            ),
            Positioned(
                top: 220,
                left: 110,
                child: Container(
                  color: Colors.black,
                  height: 200,
                  width: 150,
                ))
          ],
        ),
      ),
    );
  }
}
