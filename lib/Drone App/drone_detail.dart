import 'package:flutter/material.dart';

class DroneDetail extends StatelessWidget {
  String droneName;
  String droneImage;

  DroneDetail(this.droneImage, this.droneName);

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
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 165, 165, 165)),
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                          color: Colors.black,
                          size: 15,
                          Icons.arrow_back_ios_new_outlined),
                    )),
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
          Container(
            margin: EdgeInsets.only(left: 35, top: 20),
            height: 180,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(this.droneImage))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.droneName,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Version 2.0",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Text(
                  "\$499",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
            child: Text(
              "Plant stand count is an essential task in yield management. It allows growers to estimate the plant population, density, germination rate, and plant health and make timely decisions that finally affect the yield.",
              style:
                  TextStyle(fontSize: 12, color: Color.fromARGB(118, 0, 0, 0)),
            ),
          ),
          Expanded(child: createDroneCard())
        ],
      ),
    );
  }

  Widget createDroneCard() {
    List<String> droneDetail = [
      "./images/droneimages/flighttime.png",
      "./images/droneimages/video.png",
      "./images/droneimages/imagequality.png",
      "./images/droneimages/signal.png",
      "Flight Time",
      "Video Quality",
      "Image Sensor",
      "Central Signal",
      '30min',
      '4k 60fps',
      '20MP',
      '4.3ml',
    ];
    return GridView.builder(
      padding: EdgeInsets.only(left: 18, right: 18),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
      itemBuilder: (context, index) {
        return Container(
          width: 130,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 241, 241, 241)),
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 80,
              child: ImageIcon(
                size: 30,
                AssetImage(droneDetail[index]),
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              droneDetail[4 + index],
              style: TextStyle(
                  color: Color.fromARGB(255, 88, 144, 228),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              droneDetail[8 + index],
              style:
                  TextStyle(fontSize: 12, color: Color.fromARGB(118, 0, 0, 0)),
            ),
          ]),
        );
      },
    );
  }
}
