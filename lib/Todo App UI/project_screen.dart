import 'package:flutter/material.dart';

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("./images/todoapp/pot1.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Good Day"),
                    Text(
                      "Adam Smith",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(218, 236, 236, 236),
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
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: TextField(
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search_outlined)),
                    hintText: "Search Task",
                    filled: true,
                    fillColor: const Color(0xfff8f8f8),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Projects",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(249, 51, 51, 51),
                    )),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(248, 143, 143, 143),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return createProjectCard(index);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Progress",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(249, 51, 51, 51),
                    )),
                Text(
                  "All Sats",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(248, 143, 143, 143),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 300,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(30, 40),
                    topRight: Radius.elliptical(30, 40)),
                gradient: LinearGradient(colors: [
                  Color(0xffdbe2f4),
                  Color(0xffe9d2e2),
                ])),
            child: Column(children: [
              SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, right: 18),
                          child: Text(
                            "Create and Check Daily Task",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(248, 53, 53, 53),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, right: 18),
                          child: Text(
                            "You can control the execution of a task by command in the application",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(248, 117, 117, 117),
                            ),
                          ),
                        ),
                        const Divider(),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("./images/todoapp/pot1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("./images/todoapp/pot2.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("./images/todoapp/pot3.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("./images/todoapp/pot4.jpg"),
                    ),
                  ),
                ],
              ),
            ]),
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
        height: 190,
        child: Stack(
          children: [
            Positioned(
              top: 40,
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
                top: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 9),
                  child: Container(
                      color: const Color.fromARGB(255, 202, 202, 202),
                      height: 1,
                      width: 220),
                )),
            Positioned(
                left: 180,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                    ))),
            Positioned(
                top: 30,
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
              top: 120,
              left: 15,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/todoapp/pot1.jpg"),
              ),
            ),
            const Positioned(
              top: 120,
              left: 28,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/todoapp/pot2.jpg"),
              ),
            ),
            const Positioned(
              top: 120,
              left: 45,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/todoapp/pot3.jpg"),
              ),
            ),
            Positioned(
              left: 130,
              top: 110,
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
