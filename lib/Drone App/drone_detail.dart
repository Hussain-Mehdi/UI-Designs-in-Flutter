import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_food_ui/Drone%20App/drone_model.dart';

class DroneDetail extends StatelessWidget {
  DroneModel drone;

  DroneDetail(this.drone);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 165, 165, 165)),
                            borderRadius: BorderRadius.circular(20)),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                              color: Colors.black,
                              size: 15,
                              Icons.arrow_back_ios_new_outlined),
                        )),
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
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => imageScreen(),
                      ));
                },
                child: Hero(
                  tag: 'IMAGE',
                  child: Container(
                    margin: const EdgeInsets.only(left: 35, top: 20),
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(drone.image))),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          drone.name,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Version 2.0",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "\$499",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(
                color: const Color.fromARGB(255, 236, 236, 236),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Desciption",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        drone.description,
                        style: TextStyle(
                            fontSize: 12, color: Color.fromARGB(118, 0, 0, 0)),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: createDroneCard())
            ],
          ),
        ),
      ),
    );
  }

  List<String> icons = [];

  Widget createDroneCard() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 190,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              detailTile("./images/droneimages/flighttime.png", 'Flight Time',
                  drone.flighttime.toString()),
              detailTile("./images/droneimages/imagequality.png",
                  'Image Sensor', drone.imageSensor)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              detailTile("./images/droneimages/video.png", "Video Quality",
                  drone.videoQuality),
              detailTile("./images/droneimages/signal.png", "Central Signal",
                  drone.centralsignals)
            ],
          ),
        )
      ],
    );
  }

  Widget detailTile(String icon, String tileName, String info) {
    return Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Hero(
          tag: "DRONE",
          child: Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 241, 241, 241)),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 80,
                child: ImageIcon(
                  size: 30,
                  AssetImage(icon),
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                tileName,
                style: const TextStyle(
                    color: Color.fromARGB(255, 88, 144, 228),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                info,
                style: const TextStyle(
                    fontSize: 12, color: Color.fromARGB(118, 0, 0, 0)),
              ),
            ]),
          ),
        ));
  }

  Widget imageScreen() {
    return Scaffold(
      body: Hero(
        tag: 'IMAGE',
        child: Center(
          child: Image(height: 200, image: AssetImage(drone.image)),
        ),
      ),
    );
  }
}
