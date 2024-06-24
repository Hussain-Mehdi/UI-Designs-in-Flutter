import 'package:flutter/material.dart';

class CarDetail extends StatelessWidget {
  const CarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('./images/carapp/location.png'))),
          ),
          Expanded(
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 236, 236, 236),
              ),
              child: Stack(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 120),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(30, 30),
                          topRight: Radius.elliptical(30, 30),
                        ),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    child: Container(
                      margin: const EdgeInsets.only(left: 18, right: 18),
                      width: 330,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Volkswagen",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.black),
                            child: const Center(
                              child: Text(
                                "Purchase",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 155,
                    child: Container(
                        margin: const EdgeInsets.only(left: 40),
                        height: 280,
                        width: 280,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('./images/carapp/car1.png')))),
                  ),
                  Positioned(
                    top: 200,
                    left: 30,
                    child: Container(
                      height: 55,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 18.0, left: 15),
                        child: Text("Enter Username"),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 30,
                    child: Container(
                      height: 55,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
