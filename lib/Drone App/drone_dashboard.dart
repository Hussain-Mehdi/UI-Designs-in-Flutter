import 'package:flutter/material.dart';
import 'package:simple_food_ui/Drone%20App/drone_model.dart';

import 'drone_detail.dart';

class DroneDashboard extends StatelessWidget {
  const DroneDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: const Row(
                    children: [
                      ImageIcon(
                        AssetImage("./images/droneimages/drone.png"),
                        color: Colors.black,
                        size: 25,
                      ),
                      Text(
                        "  Store",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 165, 165, 165)),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                      color: Colors.black,
                      size: 15,
                      Icons.shopping_cart_outlined),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 18.0, right: 18),
            child: Container(
                height: 30,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Phantom",
                      style: TextStyle(
                          color: Color.fromARGB(255, 66, 112, 165),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Mavic",
                      style: TextStyle(
                          color: Color.fromARGB(255, 98, 109, 122),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Raven",
                      style: TextStyle(
                          color: Color.fromARGB(255, 98, 109, 122),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Arial",
                      style: TextStyle(
                          color: Color.fromARGB(255, 98, 109, 122),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              height: 190,
              width: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("./images/droneimages/drone1.png"))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50.0),
            child: Text(
              "Agriculture Drone",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50.0),
            child: Text(
              "Version 2.0",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, top: 10),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xff66a3ea),
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xff66a3ea),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: createDroneCard())
        ],
      ),
    );
  }

  Widget createDroneCard() {
    return GridView.builder(
      padding: const EdgeInsets.only(left: 18, right: 18),
      itemCount: droneList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
      itemBuilder: (context, index) {
        return Material(
          child: Ink(
            width: 130,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 241, 241, 241)),
            child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DroneDetail(droneList[index]),
                      ));
                },
                child: Column(children: [
                  Hero(
                    tag: "DRONE",
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(droneList[index].image))),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    droneList[index].name,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Version ${droneList[index].version}",
                    style: const TextStyle(
                        fontSize: 12, color: Color.fromARGB(118, 0, 0, 0)),
                  ),
                ])),
          ),
        );
      },
    );
  }
}
