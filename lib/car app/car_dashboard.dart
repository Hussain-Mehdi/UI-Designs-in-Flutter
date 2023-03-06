import 'package:flutter/material.dart';

class CarDashboard extends StatelessWidget {
  const CarDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 236, 237, 238),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi,",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Hussain Birmani",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Select your favourite car here",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 131, 131, 131),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('./images/carapp/pot1.jpg'))),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: createCarCards(),
          ))
        ],
      ),
    );
  }

  List<Widget> createCarCards() {
    List<Widget> carCards = [];
    List<String> carDetail = [
      './images/carapp/car1.png',
      './images/carapp/car2.png',
      './images/carapp/car3.png',
      './images/carapp/car4.png',
      './images/carapp/car5.png',
      'Chery Tiggo',
      'Volkswagen',
      'Rivian R1S',
      'Fortuner',
      'Alfa Romeo Stelvio',
      '2011',
      '2015',
      '2017',
      '2016',
      '2018',
    ];

    int i = 0;

    while (i < 5) {
      Padding car = Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 165,
          width: 250,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 236, 237, 238),
          ),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 88),
                height: 80,
                // width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Positioned(
                top: 110,
                left: 20,
                child: Text(
                  carDetail[5 + i],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Positioned(
                top: 128,
                left: 20,
                child: Text(
                  carDetail[10 + i],
                  style: TextStyle(
                      color: Color.fromARGB(255, 136, 136, 136), fontSize: 12),
                ),
              ),
              Positioned(
                left: 130,
                top: 130,
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(10)),
                      ),
                      child: Center(
                          child: Text(
                        "Buy",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )),
                    ),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(10)),
                        color: Color.fromARGB(230, 0, 0, 0),
                      ),
                      child: Center(
                        child: Text(
                          "View",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 26,
                child: Container(
                    margin: EdgeInsets.only(left: 100),
                    height: 170,
                    width: 230,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage(carDetail[i])))),
              ),
            ],
          ),
        ),
      );
      carCards.add(car);
      i++;
    }
    return carCards;
  }
}
