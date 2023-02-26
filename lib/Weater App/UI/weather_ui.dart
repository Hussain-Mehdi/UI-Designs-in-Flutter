import 'package:flutter/material.dart';

class WeatherUI extends StatelessWidget {
  const WeatherUI({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
        child: Container(color: Color(0xff131542), child: mainScreen()));
  }

  Widget mainScreen() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
            top: 150,
            left: 110,
            child: Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "./images/weather.png",
                ),
              )),
            )),
        Positioned(
            top: 500,
            left: 110,
            child: Text(
              "Weather News\n\t\t\t\t\t\t\t& Feed",
              style: TextStyle(
                  fontSize: 23,
                  color: Color.fromARGB(255, 219, 219, 219),
                  fontWeight: FontWeight.w500),
            )),
        Positioned(
          top: 560,
          left: 70,
          child: Text(
            "Sunshine is delicious, rain is refreshing\n wind braces us up, snow is exhilarating\n there is really no such thing as bad weather\n only different kinds of good weather.",
            style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 146, 146, 146),
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          top: 650,
          left: 110,
          child: Container(
            height: 45,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffffd059)),
            child: Center(
              child: Text(
                "Get Started",
                style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 87, 87, 87),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        )
      ],
    );
  }
}
