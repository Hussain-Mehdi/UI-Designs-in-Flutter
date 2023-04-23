import 'package:flutter/material.dart';

class FitnessSplashScreen extends StatelessWidget {
  const FitnessSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('./images/fitness/fit1.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageIcon(
                    AssetImage(
                      './images/fitness/v.png',
                    ),
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    "Skip",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              Spacer(),
              Spacer(),
              Spacer(),
              Text("Supplements",
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w900,
                      color: Colors.white)),
              Text(
                "Workout plans designs to help you achieve your fitness goals - whether losing or building muscles",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Spacer(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myButton('Login', Colors.transparent),
                  myButton('SignUp', Colors.white),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget myButton(String buttonName, Color color) {
    return Container(
      width: 120,
      height: 55,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
              color: color == Colors.white ? Colors.black : Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
