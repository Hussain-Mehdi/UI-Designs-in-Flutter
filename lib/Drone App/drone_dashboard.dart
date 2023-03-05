import 'package:flutter/material.dart';

class DroneDashboard extends StatelessWidget {
  const DroneDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
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
                      border:
                          Border.all(color: Color.fromARGB(255, 165, 165, 165)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Athletic",
                      style: TextStyle(
                          color: Color.fromARGB(255, 66, 112, 165),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Casual",
                      style: TextStyle(
                          color: Color.fromARGB(255, 98, 109, 122),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Loafers",
                      style: TextStyle(
                          color: Color.fromARGB(255, 98, 109, 122),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Sneakers",
                      style: TextStyle(
                          color: Color.fromARGB(255, 98, 109, 122),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, top: 20),
            height: 150,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./images/droneimages/drone1.png"))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text(
              "Agriculture Drone",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text(
              "Version 2.0",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10),
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
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
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
    List<String> droneDetail = [
      "./images/droneimages/drone6.png",
      "./images/droneimages/drone2.png",
      "./images/droneimages/drone3.png",
      "./images/droneimages/drone4.png",
      "./images/droneimages/drone5.png",
      "Film Drone",
      "Mavic Pro 2",
      "DJI Mavic Pro Drone",
      "Xiaomi Drone",
      'version 2.01',
      'version 3.34',
      'version 1.21',
      'version 5.0',
    ];
    return GridView.builder(
      padding: EdgeInsets.only(left: 18, right: 18),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
      itemBuilder: (context, index) {
        return Material(
          child: Ink(
            width: 130,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 241, 241, 241)),
            child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(droneDetail[index]))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    droneDetail[5 + index],
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    droneDetail[9 + index],
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(118, 0, 0, 0)),
                  ),
                ])),
          ),
        );
      },
    );
  }
}
