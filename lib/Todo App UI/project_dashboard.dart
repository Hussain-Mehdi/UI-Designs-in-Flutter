// ignore_for_file: unnecessary_import, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProjectDashBoard extends StatelessWidget {
  const ProjectDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(30, 40),
                    bottomRight: Radius.elliptical(30, 40)),
                gradient: LinearGradient(colors: [
                  Color(0xffdbe2f4),
                  Color(0xffe9d2e2),
                ])),
            child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(218, 236, 236, 236),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.arrow_back_ios,
                                      size: 20,
                                      color: Color(0xffa5a9ac),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(218, 236, 236, 236),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.settings_outlined,
                                      color: Color(0xffa5a9ac),
                                    )),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 18.0, right: 18, top: 20),
                          child: Text(
                            "Tuesday,28 September 2023",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(248, 53, 53, 53),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 7,
                            itemBuilder: (context, index) {
                              return createShortCard(index);
                            },
                          ),
                        )
                      ]),
                ),
              ),
            ]),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return createProjectCard(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget createProjectCard(int index) {
    List<String> Project = [
      'Redeign Main Page',
      'UI/UX Medical Dashboard',
      'Morning Traning With Anna',
      'Team Meeting',
      'Call Nikita About Buying Car'
    ];
    List<Color> colors = [
      Colors.amber,
      Colors.blue,
      Colors.indigo,
      Colors.pink
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color(0xffe8e9ed), blurRadius: 12, spreadRadius: 5)
            ],
            color: const Color(0xfffefefe),
            borderRadius: BorderRadius.circular(10)),
        width: 240,
        height: 150,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              child: Container(
                height: 40,
                width: 7,
                decoration: BoxDecoration(
                    color: colors[index],
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5))),
              ),
            ),
            Positioned(
                top: 80,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 9),
                  child: Container(
                      color: const Color.fromARGB(255, 202, 202, 202),
                      height: 1,
                      width: 220),
                )),
            Positioned(
                left: 280,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                    ))),
            Positioned(
                top: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    Project[index],
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(249, 51, 51, 51),
                        shadows: [
                          BoxShadow(
                              color: Color.fromARGB(255, 204, 204, 204),
                              spreadRadius: 5,
                              blurRadius: 12)
                        ]),
                  ),
                )),
            const Positioned(
              top: 100,
              left: 15,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/pot1.jpg"),
              ),
            ),
            const Positioned(
              top: 100,
              left: 28,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/pot2.jpg"),
              ),
            ),
            const Positioned(
              top: 100,
              left: 45,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/pot3.jpg"),
              ),
            ),
            Positioned(
              left: 230,
              top: 90,
              child: SizedBox(
                height: 50,
                width: 105,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.watch_later_outlined,
                          size: 20,
                          color: Color.fromARGB(255, 165, 165, 165),
                        ),
                        Text(
                          " 25.10(11pm)",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 165, 165, 165)),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.watch_later_outlined,
                          size: 20,
                          color: Color.fromARGB(255, 165, 165, 165),
                        ),
                        Text(
                          " Task7",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 165, 165, 165)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createShortCard(int index) {
    List<String> days = [
      'Mon',
      'Tue',
      'Wed',
      'Thurs',
      'Fri',
      'Sat',
      'Sun',
      '12',
      '15',
      '20',
      '23',
      '25',
      '27',
      '29',
      '31'
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        height: 40,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color(0xffe8e9ed), blurRadius: 12, spreadRadius: 5)
            ],
            color: const Color(0xfffefefe),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(days[index]),
            ),
            const Divider(),
            Text(
              days[index + 7],
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
