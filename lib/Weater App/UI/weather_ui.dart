import 'package:flutter/material.dart';

class WeatherUI extends StatelessWidget {
  const WeatherUI({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
        child: Container(
            color: Color(0xff131542),
            child: mainScreen(context, width, height)));
  }

  Widget mainScreen(BuildContext context, double width, double height) {
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
                fit: BoxFit.contain,
                image: AssetImage(
                  "./images/weather.png",
                ),
              )),
            )),
        Positioned(
            top: 500,
            left: 100,
            child: RichText(
              text: TextSpan(
                  text: "Weather ",
                  style: TextStyle(fontSize: 23),
                  children: [
                    TextSpan(
                      text: "News \n\t\t\t\t\t\t\t& Feed",
                      style: TextStyle(
                          color: Color(0xffffd059),
                          fontWeight: FontWeight.w700),
                    )
                  ]),
            )),
        Positioned(
          top: 570,
          left: 70,
          child: Text(
            "Sunshine is delicious, rain is refreshing\n wind braces us up, snow is exhilarating\n there is really no such thing as bad weather\n only different kinds of good weather.",
            style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 129, 129, 129),
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          top: 650,
          left: 110,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => weatherDetail(context),
                  ));
            },
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
          ),
        )
      ],
    );
  }

  Widget weatherDetail(BuildContext context) {
    return Material(
      color: Color(0xff131542),
      child: Stack(
        children: [
          Positioned(
            top: 30,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 80,
                ),
                Text(
                  "Weather Forcast",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Positioned(
            top: 100,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 250,
                width: 330,
                decoration: BoxDecoration(
                    color: Color(0xff1a1c49),
                    borderRadius: BorderRadius.circular(15)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 20, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            "Sat,3 2023",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 80,
                        left: 30,
                        child: Text(
                          "30",
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(150, 0, 0, 10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("./images/weather.png"))),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_city,
                              color: Color(0xffffd059),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Pakistan, B-17 Islamabad",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 190, 190, 190)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
